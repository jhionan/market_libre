// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchDto with _$SearchDto {
  const factory SearchDto({
    String? query,
    Paging? paging,
    List<Result>? results,
  }) = _SearchDto;

  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    @Default(0) int total,
    @Default(0) int offset,
    @Default(0) int limit,
    @Default(0) int primaryResults,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? id,
    String? siteId,
    String? title,
    double? price,
    String? currencyId,
    int? availableQuantity,
    int? soldQuantity,
    String? buyingMode,
    String? listingTypeId,
    String? condition,
    String? permalink,
    String? thumbnail,
    List<ResultAttribute>? attributes,
    String? categoryId,
    String? catalogProductId,
    List<String?>? tags,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@Collection()
@freezed
class ResultAttribute with _$ResultAttribute {
  factory ResultAttribute({
    String? valueId,
    String? name,
    String? valueName,
    @Id() @Default(Isar.autoIncrement) int dbId,
  }) = _Attribute;

  factory ResultAttribute.fromJson(Map<String, dynamic> json) =>
      _$ResultAttributeFromJson(json);
}
