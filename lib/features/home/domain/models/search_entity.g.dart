// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member

extension GetSearchResultEntityCollection on Isar {
  IsarCollection<SearchResultEntity> get searchResultEntitys {
    return getCollection('SearchResultEntity');
  }
}

final SearchResultEntitySchema = CollectionSchema(
  name: 'SearchResultEntity',
  schema:
      '{"name":"SearchResultEntity","properties":[{"name":"attributesJson","type":"String"},{"name":"condition","type":"String"},{"name":"currency","type":"String"},{"name":"id","type":"String"},{"name":"price","type":"String"},{"name":"thumbnail","type":"String"},{"name":"title","type":"String"}],"indexes":[],"links":[]}',
  adapter: const _SearchResultEntityAdapter(),
  idName: 'dbId',
  propertyIds: {
    'attributesJson': 0,
    'condition': 1,
    'currency': 2,
    'id': 3,
    'price': 4,
    'thumbnail': 5,
    'title': 6
  },
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

class _SearchResultEntityAdapter extends IsarTypeAdapter<SearchResultEntity> {
  const _SearchResultEntityAdapter();

  @override
  void serialize(
      IsarCollection<SearchResultEntity> collection,
      IsarRawObject rawObj,
      SearchResultEntity object,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.attributesJson;
    final _attributesJson = BinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += _attributesJson.length;
    final value1 = object.condition;
    IsarUint8List? _condition;
    if (value1 != null) {
      _condition = BinaryWriter.utf8Encoder.convert(value1);
    }
    dynamicSize += _condition?.length ?? 0;
    final value2 = object.currency;
    IsarUint8List? _currency;
    if (value2 != null) {
      _currency = BinaryWriter.utf8Encoder.convert(value2);
    }
    dynamicSize += _currency?.length ?? 0;
    final value3 = object.id;
    IsarUint8List? _id;
    if (value3 != null) {
      _id = BinaryWriter.utf8Encoder.convert(value3);
    }
    dynamicSize += _id?.length ?? 0;
    final value4 = object.price;
    final _price = BinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += _price.length;
    final value5 = object.thumbnail;
    IsarUint8List? _thumbnail;
    if (value5 != null) {
      _thumbnail = BinaryWriter.utf8Encoder.convert(value5);
    }
    dynamicSize += _thumbnail?.length ?? 0;
    final value6 = object.title;
    IsarUint8List? _title;
    if (value6 != null) {
      _title = BinaryWriter.utf8Encoder.convert(value6);
    }
    dynamicSize += _title?.length ?? 0;
    final size = dynamicSize + 58;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = bufAsBytes(rawObj.buffer, size);
    final writer = BinaryWriter(buffer, 58);
    writer.writeBytes(offsets[0], _attributesJson);
    writer.writeBytes(offsets[1], _condition);
    writer.writeBytes(offsets[2], _currency);
    writer.writeBytes(offsets[3], _id);
    writer.writeBytes(offsets[4], _price);
    writer.writeBytes(offsets[5], _thumbnail);
    writer.writeBytes(offsets[6], _title);
  }

  @override
  SearchResultEntity deserialize(IsarCollection<SearchResultEntity> collection,
      int id, BinaryReader reader, List<int> offsets) {
    final object = SearchResultEntity(
      attributesJson: reader.readString(offsets[0]),
      condition: reader.readStringOrNull(offsets[1]),
      currency: reader.readStringOrNull(offsets[2]),
      dbId: id,
      id: reader.readStringOrNull(offsets[3]),
      price: reader.readString(offsets[4]),
      thumbnail: reader.readStringOrNull(offsets[5]),
      title: reader.readStringOrNull(offsets[6]),
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
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readStringOrNull(offset)) as P;
      case 2:
        return (reader.readStringOrNull(offset)) as P;
      case 3:
        return (reader.readStringOrNull(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      case 5:
        return (reader.readStringOrNull(offset)) as P;
      case 6:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension SearchResultEntityQueryWhereSort
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QWhere> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhere> anyDbId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension SearchResultEntityQueryWhere
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QWhereClause> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhereClause>
      dbIdEqualTo(int dbId) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [dbId],
      includeLower: true,
      upper: [dbId],
      includeUpper: true,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhereClause>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhereClause>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhereClause>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterWhereClause>
      dbIdBetween(
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

extension SearchResultEntityQueryFilter
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QFilterCondition> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'attributesJson',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'attributesJson',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      attributesJsonMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'attributesJson',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'condition',
      value: null,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'condition',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'condition',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      conditionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'condition',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'currency',
      value: null,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currency',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'currency',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      currencyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'currency',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      dbIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dbId',
      value: value,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
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

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'price',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      priceMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'price',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'thumbnail',
      value: null,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'thumbnail',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'thumbnail',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      thumbnailMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'thumbnail',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'title',
      value: null,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension SearchResultEntityQueryWhereSortBy
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QSortBy> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByAttributesJson() {
    return addSortByInternal('attributesJson', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByAttributesJsonDesc() {
    return addSortByInternal('attributesJson', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByCondition() {
    return addSortByInternal('condition', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByConditionDesc() {
    return addSortByInternal('condition', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByCurrency() {
    return addSortByInternal('currency', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByCurrencyDesc() {
    return addSortByInternal('currency', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByDbId() {
    return addSortByInternal('dbId', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByDbIdDesc() {
    return addSortByInternal('dbId', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByThumbnail() {
    return addSortByInternal('thumbnail', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByThumbnailDesc() {
    return addSortByInternal('thumbnail', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension SearchResultEntityQueryWhereSortThenBy
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QSortThenBy> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByAttributesJson() {
    return addSortByInternal('attributesJson', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByAttributesJsonDesc() {
    return addSortByInternal('attributesJson', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByCondition() {
    return addSortByInternal('condition', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByConditionDesc() {
    return addSortByInternal('condition', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByCurrency() {
    return addSortByInternal('currency', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByCurrencyDesc() {
    return addSortByInternal('currency', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByDbId() {
    return addSortByInternal('dbId', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByDbIdDesc() {
    return addSortByInternal('dbId', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByThumbnail() {
    return addSortByInternal('thumbnail', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByThumbnailDesc() {
    return addSortByInternal('thumbnail', Sort.desc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QAfterSortBy>
      thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension SearchResultEntityQueryWhereDistinct
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct> {
  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByAttributesJson({bool caseSensitive = true}) {
    return addDistinctByInternal('attributesJson',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByCondition({bool caseSensitive = true}) {
    return addDistinctByInternal('condition', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByCurrency({bool caseSensitive = true}) {
    return addDistinctByInternal('currency', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByDbId() {
    return addDistinctByInternal('dbId');
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByPrice({bool caseSensitive = true}) {
    return addDistinctByInternal('price', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByThumbnail({bool caseSensitive = true}) {
    return addDistinctByInternal('thumbnail', caseSensitive: caseSensitive);
  }

  QueryBuilder<SearchResultEntity, SearchResultEntity, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }
}

extension SearchResultEntityQueryProperty
    on QueryBuilder<SearchResultEntity, SearchResultEntity, QQueryProperty> {
  QueryBuilder<SearchResultEntity, String, QQueryOperations>
      attributesJsonProperty() {
    return addPropertyNameInternal('attributesJson');
  }

  QueryBuilder<SearchResultEntity, String?, QQueryOperations>
      conditionProperty() {
    return addPropertyNameInternal('condition');
  }

  QueryBuilder<SearchResultEntity, String?, QQueryOperations>
      currencyProperty() {
    return addPropertyNameInternal('currency');
  }

  QueryBuilder<SearchResultEntity, int, QQueryOperations> dbIdProperty() {
    return addPropertyNameInternal('dbId');
  }

  QueryBuilder<SearchResultEntity, String?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SearchResultEntity, String, QQueryOperations> priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<SearchResultEntity, String?, QQueryOperations>
      thumbnailProperty() {
    return addPropertyNameInternal('thumbnail');
  }

  QueryBuilder<SearchResultEntity, String?, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }
}
