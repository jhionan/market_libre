import 'package:freezed_annotation/freezed_annotation.dart';


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
        @Default(0)int offset,
        @Default(0)int limit,
        @Default(0)int primaryResults,
    }) = _Paging;

    factory Paging.fromJson(Map<String, dynamic> json) =>
        _$PagingFromJson(json);
    

}

@freezed
class Result with _$Result {
    const factory Result({
        String? id,
        String? siteId,
        String? title,
        int? price,
        String? currencyId,
        int? availableQuantity,
        int? soldQuantity,
        String? buyingMode,
        String? listingTypeId,
        String? condition,
        String? permalink,
        String? thumbnail,
        List<Attribute>? attributes,
        String? categoryId,
        String? catalogProductId,
        List<String?>? tags,
    }) = _Result;

factory Result.fromJson(Map<String, dynamic> json) =>
    _$ResultFromJson(json);

    
}

@freezed
class Attribute with _$Attribute {
    const factory Attribute({
        String? valueId,
        int? source,
        String? id,
        String? name,
        String? valueName,
        List<AttributeValue>? values,
        String? attributeGroupName,
    }) = _Attribute;

    factory Attribute.fromJson(Map<String, dynamic> json) =>
        _$AttributeFromJson(json);

}

@freezed
class AttributeValue with _$AttributeValue {
    const factory AttributeValue({
        int? source,
        String? id,
        String? name,
    }) = _AttributeValue;

    factory AttributeValue.fromJson(Map<String, dynamic> json) =>
        _$AttributeValueFromJson(json);
}


@freezed
class Shipping with _$Shipping {
    const factory Shipping({
        bool? freeShipping,
        String? mode,
        List<String?>? tags,
        String? logisticType,
        bool? storePickUp,
    }) = _Shipping;

    factory Shipping.fromJson(Map<String, dynamic> json) =>
        _$ShippingFromJson(json);
}
