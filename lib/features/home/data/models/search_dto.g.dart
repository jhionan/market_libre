// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member

extension GetResultAttributeCollection on Isar {
  IsarCollection<ResultAttribute> get resultAttributes {
    return getCollection('ResultAttribute');
  }
}

final ResultAttributeSchema = CollectionSchema(
  name: 'ResultAttribute',
  schema:
      '{"name":"ResultAttribute","properties":[{"name":"name","type":"String"},{"name":"valueId","type":"String"},{"name":"valueName","type":"String"}],"indexes":[],"links":[]}',
  adapter: const _ResultAttributeAdapter(),
  idName: 'dbId',
  propertyIds: {'name': 0, 'valueId': 1, 'valueName': 2},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.dbId,
  setId: null,
  getLinks: (obj) => [],
  version: 1,
);

class _ResultAttributeAdapter extends IsarTypeAdapter<ResultAttribute> {
  const _ResultAttributeAdapter();

  @override
  void serialize(
      IsarCollection<ResultAttribute> collection,
      IsarRawObject rawObj,
      ResultAttribute object,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.name;
    IsarUint8List? _name;
    if (value0 != null) {
      _name = BinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += _name?.length ?? 0;
    final value1 = object.valueId;
    IsarUint8List? _valueId;
    if (value1 != null) {
      _valueId = BinaryWriter.utf8Encoder.convert(value1);
    }
    dynamicSize += _valueId?.length ?? 0;
    final value2 = object.valueName;
    IsarUint8List? _valueName;
    if (value2 != null) {
      _valueName = BinaryWriter.utf8Encoder.convert(value2);
    }
    dynamicSize += _valueName?.length ?? 0;
    final size = dynamicSize + 26;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = bufAsBytes(rawObj.buffer, size);
    final writer = BinaryWriter(buffer, 26);
    writer.writeBytes(offsets[0], _name);
    writer.writeBytes(offsets[1], _valueId);
    writer.writeBytes(offsets[2], _valueName);
  }

  @override
  ResultAttribute deserialize(IsarCollection<ResultAttribute> collection,
      int id, BinaryReader reader, List<int> offsets) {
    final object = ResultAttribute(
      dbId: id,
      name: reader.readStringOrNull(offsets[0]),
      valueId: reader.readStringOrNull(offsets[1]),
      valueName: reader.readStringOrNull(offsets[2]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readStringOrNull(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension ResultAttributeQueryWhereSort
    on QueryBuilder<ResultAttribute, ResultAttribute, QWhere> {
  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhere> anyDbId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ResultAttributeQueryWhere
    on QueryBuilder<ResultAttribute, ResultAttribute, QWhereClause> {
  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhereClause> dbIdEqualTo(
      int dbId) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [dbId],
      includeLower: true,
      upper: [dbId],
      includeUpper: true,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhereClause>
      dbIdNotEqualTo(int dbId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [dbId],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [dbId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [dbId],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [dbId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhereClause>
      dbIdGreaterThan(
    int dbId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [dbId],
      includeLower: include,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhereClause>
      dbIdLessThan(
    int dbId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [dbId],
      includeUpper: include,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterWhereClause> dbIdBetween(
    int lowerDbId,
    int upperDbId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerDbId],
      includeLower: includeLower,
      upper: [upperDbId],
      includeUpper: includeUpper,
    ));
  }
}

extension ResultAttributeQueryFilter
    on QueryBuilder<ResultAttribute, ResultAttribute, QFilterCondition> {
  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      dbIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dbId',
      value: value,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      dbIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'dbId',
      value: value,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      dbIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'dbId',
      value: value,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      dbIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dbId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'valueId',
      value: null,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'valueId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'valueId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'valueId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'valueName',
      value: null,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'valueName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'valueName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterFilterCondition>
      valueNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'valueName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ResultAttributeQueryWhereSortBy
    on QueryBuilder<ResultAttribute, ResultAttribute, QSortBy> {
  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> sortByDbId() {
    return addSortByInternal('dbId', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      sortByDbIdDesc() {
    return addSortByInternal('dbId', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> sortByValueId() {
    return addSortByInternal('valueId', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      sortByValueIdDesc() {
    return addSortByInternal('valueId', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      sortByValueName() {
    return addSortByInternal('valueName', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      sortByValueNameDesc() {
    return addSortByInternal('valueName', Sort.desc);
  }
}

extension ResultAttributeQueryWhereSortThenBy
    on QueryBuilder<ResultAttribute, ResultAttribute, QSortThenBy> {
  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> thenByDbId() {
    return addSortByInternal('dbId', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      thenByDbIdDesc() {
    return addSortByInternal('dbId', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy> thenByValueId() {
    return addSortByInternal('valueId', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      thenByValueIdDesc() {
    return addSortByInternal('valueId', Sort.desc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      thenByValueName() {
    return addSortByInternal('valueName', Sort.asc);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QAfterSortBy>
      thenByValueNameDesc() {
    return addSortByInternal('valueName', Sort.desc);
  }
}

extension ResultAttributeQueryWhereDistinct
    on QueryBuilder<ResultAttribute, ResultAttribute, QDistinct> {
  QueryBuilder<ResultAttribute, ResultAttribute, QDistinct> distinctByDbId() {
    return addDistinctByInternal('dbId');
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QDistinct> distinctByValueId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('valueId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ResultAttribute, ResultAttribute, QDistinct> distinctByValueName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('valueName', caseSensitive: caseSensitive);
  }
}

extension ResultAttributeQueryProperty
    on QueryBuilder<ResultAttribute, ResultAttribute, QQueryProperty> {
  QueryBuilder<ResultAttribute, int, QQueryOperations> dbIdProperty() {
    return addPropertyNameInternal('dbId');
  }

  QueryBuilder<ResultAttribute, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<ResultAttribute, String?, QQueryOperations> valueIdProperty() {
    return addPropertyNameInternal('valueId');
  }

  QueryBuilder<ResultAttribute, String?, QQueryOperations> valueNameProperty() {
    return addPropertyNameInternal('valueName');
  }
}

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

Map<String, dynamic> _$$_SearchDtoToJson(_$_SearchDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.query);
  writeNotNull('paging', instance.paging?.toJson());
  writeNotNull('results', instance.results?.map((e) => e.toJson()).toList());
  return val;
}

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      total: json['total'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
      primaryResults: json['primary_results'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'total': instance.total,
      'offset': instance.offset,
      'limit': instance.limit,
      'primary_results': instance.primaryResults,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as String?,
      siteId: json['site_id'] as String?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      currencyId: json['currency_id'] as String?,
      availableQuantity: json['available_quantity'] as int?,
      soldQuantity: json['sold_quantity'] as int?,
      buyingMode: json['buying_mode'] as String?,
      listingTypeId: json['listing_type_id'] as String?,
      condition: json['condition'] as String?,
      permalink: json['permalink'] as String?,
      thumbnail: json['thumbnail'] as String?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => ResultAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: json['category_id'] as String?,
      catalogProductId: json['catalog_product_id'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('site_id', instance.siteId);
  writeNotNull('title', instance.title);
  writeNotNull('price', instance.price);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('available_quantity', instance.availableQuantity);
  writeNotNull('sold_quantity', instance.soldQuantity);
  writeNotNull('buying_mode', instance.buyingMode);
  writeNotNull('listing_type_id', instance.listingTypeId);
  writeNotNull('condition', instance.condition);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull(
      'attributes', instance.attributes?.map((e) => e.toJson()).toList());
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('catalog_product_id', instance.catalogProductId);
  writeNotNull('tags', instance.tags);
  return val;
}

_$_Attribute _$$_AttributeFromJson(Map<String, dynamic> json) => _$_Attribute(
      valueId: json['value_id'] as String?,
      name: json['name'] as String?,
      valueName: json['value_name'] as String?,
      dbId: json['db_id'] as int? ?? Isar.autoIncrement,
    );

Map<String, dynamic> _$$_AttributeToJson(_$_Attribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value_id', instance.valueId);
  writeNotNull('name', instance.name);
  writeNotNull('value_name', instance.valueName);
  val['db_id'] = instance.dbId;
  return val;
}
