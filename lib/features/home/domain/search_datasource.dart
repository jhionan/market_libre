import 'dart:convert';
import 'dart:isolate';

import '../../../core/db/isar_db.dart';
import '../data/api/search_api.dart';
import '../data/models/search_dto.dart';
import 'models/search_entity.dart';

class _SearchDtoIsolateData {
  _SearchDtoIsolateData({required this.sendPort, required this.searchDto});

  final SendPort sendPort;
  final SearchDto searchDto;
}

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

  static void _searchWorkerIsolate(
      _SearchDtoIsolateData _searchDtoIsolateData) {
    SendPort sendPort = _searchDtoIsolateData.sendPort;
    sendPort.send(SearchEntity.fromDto(_searchDtoIsolateData.searchDto));
  }

  Stream<SearchEntity> search(
      {required String query, required int offset}) async* {
    yield* _searchApi
        .search(query, 50, offset)
        .asyncExpand((SearchDto searchDto) async* {
      final ReceivePort receivePort = ReceivePort();

      await Isolate.spawn(
          _searchWorkerIsolate,
          _SearchDtoIsolateData(
              searchDto: searchDto, sendPort: receivePort.sendPort));
      yield* Stream.castFrom<dynamic, SearchEntity>(receivePort);
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
