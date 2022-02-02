// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../core/utils/extensions.dart';
import '../../data/models/search_dto.dart';

part 'search_entity.freezed.dart';
part 'search_entity.g.dart';

@freezed
class SearchEntity with _$SearchEntity {
  factory SearchEntity({
    required List<SearchResultEntity> searchResults,
    @Default(0) int offSet,
  }) = _SearchEntity;

  factory SearchEntity.fromDto(SearchDto dto) {
    return SearchEntity(
        offSet: dto.paging?.offset ?? 0,
        searchResults: dto.results?.map((Result r) {
              return SearchResultEntity(
                  price: '${r.price!.toMoneyFormat()} ${r.currencyId}',
                  condition: r.condition,
                  currency: r.currencyId,
                  id: r.id,
                  thumbnail: r.thumbnail,
                  title: r.title,
                  attributes: r.attributes,
                  attributesJson: jsonEncode(r.attributes));
            }).toList() ??
            []);
  }
}

@Collection()
@freezed
class SearchResultEntity with _$SearchResultEntity {
  factory SearchResultEntity({
    @Id() @Default(Isar.autoIncrement) int dbId,
    @Default('') String? id,
    @Default('') String? title,
    required String price,
    @Default('USD') String? currency,
    @Default('') String? condition,
    @Default('') String? thumbnail,
    @Default('')String attributesJson,
    @Default(<ResultAttribute>[]) List<ResultAttribute>? attributes,
  }) = _SearchResultEntity;
}
