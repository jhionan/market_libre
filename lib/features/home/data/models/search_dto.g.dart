// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDto _$$_SearchDtoFromJson(Map<String, dynamic> json) => _$_SearchDto(
      query: json['query'] as String?,
      paging: json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchDtoToJson(_$_SearchDto instance) =>
    <String, dynamic>{
      'query': instance.query,
      'paging': instance.paging,
      'results': instance.results,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      total: json['total'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
      primaryResults: json['primaryResults'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'limit': instance.limit,
      'primaryResults': instance.primaryResults,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as String?,
      siteId: json['siteId'] as String?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      currencyId: json['currencyId'] as String?,
      availableQuantity: json['availableQuantity'] as int?,
      soldQuantity: json['soldQuantity'] as int?,
      buyingMode: json['buyingMode'] as String?,
      listingTypeId: json['listingTypeId'] as String?,
      condition: json['condition'] as String?,
      permalink: json['permalink'] as String?,
      thumbnail: json['thumbnail'] as String?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => Attribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: json['categoryId'] as String?,
      catalogProductId: json['catalogProductId'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'siteId': instance.siteId,
      'title': instance.title,
      'price': instance.price,
      'currencyId': instance.currencyId,
      'availableQuantity': instance.availableQuantity,
      'soldQuantity': instance.soldQuantity,
      'buyingMode': instance.buyingMode,
      'listingTypeId': instance.listingTypeId,
      'condition': instance.condition,
      'permalink': instance.permalink,
      'thumbnail': instance.thumbnail,
      'attributes': instance.attributes,
      'categoryId': instance.categoryId,
      'catalogProductId': instance.catalogProductId,
      'tags': instance.tags,
    };

_$_Attribute _$$_AttributeFromJson(Map<String, dynamic> json) => _$_Attribute(
      valueId: json['valueId'] as String?,
      source: json['source'] as int?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      valueName: json['valueName'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => AttributeValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributeGroupName: json['attributeGroupName'] as String?,
    );

Map<String, dynamic> _$$_AttributeToJson(_$_Attribute instance) =>
    <String, dynamic>{
      'valueId': instance.valueId,
      'source': instance.source,
      'id': instance.id,
      'name': instance.name,
      'valueName': instance.valueName,
      'values': instance.values,
      'attributeGroupName': instance.attributeGroupName,
    };

_$_AttributeValue _$$_AttributeValueFromJson(Map<String, dynamic> json) =>
    _$_AttributeValue(
      source: json['source'] as int?,
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AttributeValueToJson(_$_AttributeValue instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'name': instance.name,
    };

_$_Shipping _$$_ShippingFromJson(Map<String, dynamic> json) => _$_Shipping(
      freeShipping: json['freeShipping'] as bool?,
      mode: json['mode'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      logisticType: json['logisticType'] as String?,
      storePickUp: json['storePickUp'] as bool?,
    );

Map<String, dynamic> _$$_ShippingToJson(_$_Shipping instance) =>
    <String, dynamic>{
      'freeShipping': instance.freeShipping,
      'mode': instance.mode,
      'tags': instance.tags,
      'logisticType': instance.logisticType,
      'storePickUp': instance.storePickUp,
    };
