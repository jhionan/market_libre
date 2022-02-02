import 'dart:convert';

import '../../../core/db/isar_db.dart';
import '../data/api/search_api.dart';
import '../data/models/search_dto.dart';
import 'models/search_entity.dart';

class SearchDatasource {
  SearchDatasource(this._searchApi, this._db);
  final SearchApi _searchApi;
  final IsarDb _db;

  Stream<List<SearchResultEntity>> getLatestVisitedProducts() async* {
    yield* _db
        .getResult()
        .asStream()
        .map((List<SearchResultEntity> event) =>
            event..sort((a, b) => b.dbId.compareTo(a.dbId)))
        .asyncMap((event) async {
      return _listWithReconstructedAttributes(event);
    });
  }

  List<SearchResultEntity> _listWithReconstructedAttributes(
      List<SearchResultEntity> event) {
    return event
        .map((e) => e.copyWith(
                attributes: List.from(<ResultAttribute>[
              ...(jsonDecode(e.attributesJson) as List<Object?>).map(
                  (e) => ResultAttribute.fromJson(e as Map<String, dynamic>))
            ])))
        .toList();
  }

  Stream<SearchEntity> search(
      {required String query, required int offset}) async* {
    yield* _searchApi.search(query, 50, offset).asyncMap((SearchDto searchDto) {
      return SearchEntity.fromDto(searchDto);
    });
  }

  Stream<List<SearchResultEntity>> addLatestProduct(
      SearchResultEntity product) async* {
    yield* getLatestVisitedProducts()
        .asyncMap((List<SearchResultEntity> result) async {
      if (result.where((element) => element.id == product.id).isNotEmpty) {
        return result;
      }
      _deleteLastIfCollectionBiggerThanFour(result);
      await _db.saveResult(product);

      return <SearchResultEntity>[product, ...result.take(4)];
    });
  }

  void _deleteLastIfCollectionBiggerThanFour(List<SearchResultEntity> result) {
    if (result.length > 4) {
      _db.delete(result.last.dbId);
    }
  }
}
