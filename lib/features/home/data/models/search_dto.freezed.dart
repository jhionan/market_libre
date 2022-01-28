// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
class _$SearchDtoTearOff {
  const _$SearchDtoTearOff();

  _SearchDto call({String? query, Paging? paging, List<Result>? results}) {
    return _SearchDto(
      query: query,
      paging: paging,
      results: results,
    );
  }

  SearchDto fromJson(Map<String, Object?> json) {
    return SearchDto.fromJson(json);
  }
}

/// @nodoc
const $SearchDto = _$SearchDtoTearOff();

/// @nodoc
mixin _$SearchDto {
  String? get query => throw _privateConstructorUsedError;
  Paging? get paging => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDtoCopyWith<SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res>;
  $Res call({String? query, Paging? paging, List<Result>? results});

  $PagingCopyWith<$Res>? get paging;
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res> implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  final SearchDto _value;
  // ignore: unused_field
  final $Res Function(SearchDto) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? paging = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      paging: paging == freezed
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }

  @override
  $PagingCopyWith<$Res>? get paging {
    if (_value.paging == null) {
      return null;
    }

    return $PagingCopyWith<$Res>(_value.paging!, (value) {
      return _then(_value.copyWith(paging: value));
    });
  }
}

/// @nodoc
abstract class _$SearchDtoCopyWith<$Res> implements $SearchDtoCopyWith<$Res> {
  factory _$SearchDtoCopyWith(
          _SearchDto value, $Res Function(_SearchDto) then) =
      __$SearchDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? query, Paging? paging, List<Result>? results});

  @override
  $PagingCopyWith<$Res>? get paging;
}

/// @nodoc
class __$SearchDtoCopyWithImpl<$Res> extends _$SearchDtoCopyWithImpl<$Res>
    implements _$SearchDtoCopyWith<$Res> {
  __$SearchDtoCopyWithImpl(_SearchDto _value, $Res Function(_SearchDto) _then)
      : super(_value, (v) => _then(v as _SearchDto));

  @override
  _SearchDto get _value => super._value as _SearchDto;

  @override
  $Res call({
    Object? query = freezed,
    Object? paging = freezed,
    Object? results = freezed,
  }) {
    return _then(_SearchDto(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      paging: paging == freezed
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchDto implements _SearchDto {
  const _$_SearchDto({this.query, this.paging, this.results});

  factory _$_SearchDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDtoFromJson(json);

  @override
  final String? query;
  @override
  final Paging? paging;
  @override
  final List<Result>? results;

  @override
  String toString() {
    return 'SearchDto(query: $query, paging: $paging, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchDto &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.paging, paging) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(paging),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$SearchDtoCopyWith<_SearchDto> get copyWith =>
      __$SearchDtoCopyWithImpl<_SearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDtoToJson(this);
  }
}

abstract class _SearchDto implements SearchDto {
  const factory _SearchDto(
      {String? query, Paging? paging, List<Result>? results}) = _$_SearchDto;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$_SearchDto.fromJson;

  @override
  String? get query;
  @override
  Paging? get paging;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$SearchDtoCopyWith<_SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
class _$PagingTearOff {
  const _$PagingTearOff();

  _Paging call(
      {int total = 0, int offset = 0, int limit = 0, int primaryResults = 0}) {
    return _Paging(
      total: total,
      offset: offset,
      limit: limit,
      primaryResults: primaryResults,
    );
  }

  Paging fromJson(Map<String, Object?> json) {
    return Paging.fromJson(json);
  }
}

/// @nodoc
const $Paging = _$PagingTearOff();

/// @nodoc
mixin _$Paging {
  int get total => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get primaryResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res>;
  $Res call({int total, int offset, int limit, int primaryResults});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res> implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  final Paging _value;
  // ignore: unused_field
  final $Res Function(Paging) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? primaryResults = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      primaryResults: primaryResults == freezed
          ? _value.primaryResults
          : primaryResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$PagingCopyWith(_Paging value, $Res Function(_Paging) then) =
      __$PagingCopyWithImpl<$Res>;
  @override
  $Res call({int total, int offset, int limit, int primaryResults});
}

/// @nodoc
class __$PagingCopyWithImpl<$Res> extends _$PagingCopyWithImpl<$Res>
    implements _$PagingCopyWith<$Res> {
  __$PagingCopyWithImpl(_Paging _value, $Res Function(_Paging) _then)
      : super(_value, (v) => _then(v as _Paging));

  @override
  _Paging get _value => super._value as _Paging;

  @override
  $Res call({
    Object? total = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? primaryResults = freezed,
  }) {
    return _then(_Paging(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      primaryResults: primaryResults == freezed
          ? _value.primaryResults
          : primaryResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  const _$_Paging(
      {this.total = 0,
      this.offset = 0,
      this.limit = 0,
      this.primaryResults = 0});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @JsonKey()
  @override
  final int total;
  @JsonKey()
  @override
  final int offset;
  @JsonKey()
  @override
  final int limit;
  @JsonKey()
  @override
  final int primaryResults;

  @override
  String toString() {
    return 'Paging(total: $total, offset: $offset, limit: $limit, primaryResults: $primaryResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Paging &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.primaryResults, primaryResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(primaryResults));

  @JsonKey(ignore: true)
  @override
  _$PagingCopyWith<_Paging> get copyWith =>
      __$PagingCopyWithImpl<_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(this);
  }
}

abstract class _Paging implements Paging {
  const factory _Paging(
      {int total, int offset, int limit, int primaryResults}) = _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  int get total;
  @override
  int get offset;
  @override
  int get limit;
  @override
  int get primaryResults;
  @override
  @JsonKey(ignore: true)
  _$PagingCopyWith<_Paging> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      {String? id,
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
      List<String?>? tags}) {
    return _Result(
      id: id,
      siteId: siteId,
      title: title,
      price: price,
      currencyId: currencyId,
      availableQuantity: availableQuantity,
      soldQuantity: soldQuantity,
      buyingMode: buyingMode,
      listingTypeId: listingTypeId,
      condition: condition,
      permalink: permalink,
      thumbnail: thumbnail,
      attributes: attributes,
      categoryId: categoryId,
      catalogProductId: catalogProductId,
      tags: tags,
    );
  }

  Result fromJson(Map<String, Object?> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  String? get id => throw _privateConstructorUsedError;
  String? get siteId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get currencyId => throw _privateConstructorUsedError;
  int? get availableQuantity => throw _privateConstructorUsedError;
  int? get soldQuantity => throw _privateConstructorUsedError;
  String? get buyingMode => throw _privateConstructorUsedError;
  String? get listingTypeId => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get permalink => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  List<Attribute>? get attributes => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get catalogProductId => throw _privateConstructorUsedError;
  List<String?>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {String? id,
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
      List<String?>? tags});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? siteId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? currencyId = freezed,
    Object? availableQuantity = freezed,
    Object? soldQuantity = freezed,
    Object? buyingMode = freezed,
    Object? listingTypeId = freezed,
    Object? condition = freezed,
    Object? permalink = freezed,
    Object? thumbnail = freezed,
    Object? attributes = freezed,
    Object? categoryId = freezed,
    Object? catalogProductId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      siteId: siteId == freezed
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: availableQuantity == freezed
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      soldQuantity: soldQuantity == freezed
          ? _value.soldQuantity
          : soldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyingMode: buyingMode == freezed
          ? _value.buyingMode
          : buyingMode // ignore: cast_nullable_to_non_nullable
              as String?,
      listingTypeId: listingTypeId == freezed
          ? _value.listingTypeId
          : listingTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: permalink == freezed
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogProductId: catalogProductId == freezed
          ? _value.catalogProductId
          : catalogProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
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
      List<String?>? tags});
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? id = freezed,
    Object? siteId = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? currencyId = freezed,
    Object? availableQuantity = freezed,
    Object? soldQuantity = freezed,
    Object? buyingMode = freezed,
    Object? listingTypeId = freezed,
    Object? condition = freezed,
    Object? permalink = freezed,
    Object? thumbnail = freezed,
    Object? attributes = freezed,
    Object? categoryId = freezed,
    Object? catalogProductId = freezed,
    Object? tags = freezed,
  }) {
    return _then(_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      siteId: siteId == freezed
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as String?,
      availableQuantity: availableQuantity == freezed
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      soldQuantity: soldQuantity == freezed
          ? _value.soldQuantity
          : soldQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyingMode: buyingMode == freezed
          ? _value.buyingMode
          : buyingMode // ignore: cast_nullable_to_non_nullable
              as String?,
      listingTypeId: listingTypeId == freezed
          ? _value.listingTypeId
          : listingTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      permalink: permalink == freezed
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<Attribute>?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogProductId: catalogProductId == freezed
          ? _value.catalogProductId
          : catalogProductId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.siteId,
      this.title,
      this.price,
      this.currencyId,
      this.availableQuantity,
      this.soldQuantity,
      this.buyingMode,
      this.listingTypeId,
      this.condition,
      this.permalink,
      this.thumbnail,
      this.attributes,
      this.categoryId,
      this.catalogProductId,
      this.tags});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String? id;
  @override
  final String? siteId;
  @override
  final String? title;
  @override
  final int? price;
  @override
  final String? currencyId;
  @override
  final int? availableQuantity;
  @override
  final int? soldQuantity;
  @override
  final String? buyingMode;
  @override
  final String? listingTypeId;
  @override
  final String? condition;
  @override
  final String? permalink;
  @override
  final String? thumbnail;
  @override
  final List<Attribute>? attributes;
  @override
  final String? categoryId;
  @override
  final String? catalogProductId;
  @override
  final List<String?>? tags;

  @override
  String toString() {
    return 'Result(id: $id, siteId: $siteId, title: $title, price: $price, currencyId: $currencyId, availableQuantity: $availableQuantity, soldQuantity: $soldQuantity, buyingMode: $buyingMode, listingTypeId: $listingTypeId, condition: $condition, permalink: $permalink, thumbnail: $thumbnail, attributes: $attributes, categoryId: $categoryId, catalogProductId: $catalogProductId, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.siteId, siteId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.currencyId, currencyId) &&
            const DeepCollectionEquality()
                .equals(other.availableQuantity, availableQuantity) &&
            const DeepCollectionEquality()
                .equals(other.soldQuantity, soldQuantity) &&
            const DeepCollectionEquality()
                .equals(other.buyingMode, buyingMode) &&
            const DeepCollectionEquality()
                .equals(other.listingTypeId, listingTypeId) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.permalink, permalink) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.catalogProductId, catalogProductId) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(siteId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currencyId),
      const DeepCollectionEquality().hash(availableQuantity),
      const DeepCollectionEquality().hash(soldQuantity),
      const DeepCollectionEquality().hash(buyingMode),
      const DeepCollectionEquality().hash(listingTypeId),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(permalink),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(catalogProductId),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {String? id,
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
      List<String?>? tags}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String? get id;
  @override
  String? get siteId;
  @override
  String? get title;
  @override
  int? get price;
  @override
  String? get currencyId;
  @override
  int? get availableQuantity;
  @override
  int? get soldQuantity;
  @override
  String? get buyingMode;
  @override
  String? get listingTypeId;
  @override
  String? get condition;
  @override
  String? get permalink;
  @override
  String? get thumbnail;
  @override
  List<Attribute>? get attributes;
  @override
  String? get categoryId;
  @override
  String? get catalogProductId;
  @override
  List<String?>? get tags;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
class _$AttributeTearOff {
  const _$AttributeTearOff();

  _Attribute call(
      {String? valueId,
      int? source,
      String? id,
      String? name,
      String? valueName,
      List<AttributeValue>? values,
      String? attributeGroupName}) {
    return _Attribute(
      valueId: valueId,
      source: source,
      id: id,
      name: name,
      valueName: valueName,
      values: values,
      attributeGroupName: attributeGroupName,
    );
  }

  Attribute fromJson(Map<String, Object?> json) {
    return Attribute.fromJson(json);
  }
}

/// @nodoc
const $Attribute = _$AttributeTearOff();

/// @nodoc
mixin _$Attribute {
  String? get valueId => throw _privateConstructorUsedError;
  int? get source => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get valueName => throw _privateConstructorUsedError;
  List<AttributeValue>? get values => throw _privateConstructorUsedError;
  String? get attributeGroupName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res>;
  $Res call(
      {String? valueId,
      int? source,
      String? id,
      String? name,
      String? valueName,
      List<AttributeValue>? values,
      String? attributeGroupName});
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res> implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  final Attribute _value;
  // ignore: unused_field
  final $Res Function(Attribute) _then;

  @override
  $Res call({
    Object? valueId = freezed,
    Object? source = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? valueName = freezed,
    Object? values = freezed,
    Object? attributeGroupName = freezed,
  }) {
    return _then(_value.copyWith(
      valueId: valueId == freezed
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      valueName: valueName == freezed
          ? _value.valueName
          : valueName // ignore: cast_nullable_to_non_nullable
              as String?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<AttributeValue>?,
      attributeGroupName: attributeGroupName == freezed
          ? _value.attributeGroupName
          : attributeGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeCopyWith<$Res> implements $AttributeCopyWith<$Res> {
  factory _$AttributeCopyWith(
          _Attribute value, $Res Function(_Attribute) then) =
      __$AttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? valueId,
      int? source,
      String? id,
      String? name,
      String? valueName,
      List<AttributeValue>? values,
      String? attributeGroupName});
}

/// @nodoc
class __$AttributeCopyWithImpl<$Res> extends _$AttributeCopyWithImpl<$Res>
    implements _$AttributeCopyWith<$Res> {
  __$AttributeCopyWithImpl(_Attribute _value, $Res Function(_Attribute) _then)
      : super(_value, (v) => _then(v as _Attribute));

  @override
  _Attribute get _value => super._value as _Attribute;

  @override
  $Res call({
    Object? valueId = freezed,
    Object? source = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? valueName = freezed,
    Object? values = freezed,
    Object? attributeGroupName = freezed,
  }) {
    return _then(_Attribute(
      valueId: valueId == freezed
          ? _value.valueId
          : valueId // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      valueName: valueName == freezed
          ? _value.valueName
          : valueName // ignore: cast_nullable_to_non_nullable
              as String?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<AttributeValue>?,
      attributeGroupName: attributeGroupName == freezed
          ? _value.attributeGroupName
          : attributeGroupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attribute implements _Attribute {
  const _$_Attribute(
      {this.valueId,
      this.source,
      this.id,
      this.name,
      this.valueName,
      this.values,
      this.attributeGroupName});

  factory _$_Attribute.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeFromJson(json);

  @override
  final String? valueId;
  @override
  final int? source;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? valueName;
  @override
  final List<AttributeValue>? values;
  @override
  final String? attributeGroupName;

  @override
  String toString() {
    return 'Attribute(valueId: $valueId, source: $source, id: $id, name: $name, valueName: $valueName, values: $values, attributeGroupName: $attributeGroupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attribute &&
            const DeepCollectionEquality().equals(other.valueId, valueId) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.valueName, valueName) &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality()
                .equals(other.attributeGroupName, attributeGroupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(valueId),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(valueName),
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(attributeGroupName));

  @JsonKey(ignore: true)
  @override
  _$AttributeCopyWith<_Attribute> get copyWith =>
      __$AttributeCopyWithImpl<_Attribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeToJson(this);
  }
}

abstract class _Attribute implements Attribute {
  const factory _Attribute(
      {String? valueId,
      int? source,
      String? id,
      String? name,
      String? valueName,
      List<AttributeValue>? values,
      String? attributeGroupName}) = _$_Attribute;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$_Attribute.fromJson;

  @override
  String? get valueId;
  @override
  int? get source;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get valueName;
  @override
  List<AttributeValue>? get values;
  @override
  String? get attributeGroupName;
  @override
  @JsonKey(ignore: true)
  _$AttributeCopyWith<_Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeValue _$AttributeValueFromJson(Map<String, dynamic> json) {
  return _AttributeValue.fromJson(json);
}

/// @nodoc
class _$AttributeValueTearOff {
  const _$AttributeValueTearOff();

  _AttributeValue call({int? source, String? id, String? name}) {
    return _AttributeValue(
      source: source,
      id: id,
      name: name,
    );
  }

  AttributeValue fromJson(Map<String, Object?> json) {
    return AttributeValue.fromJson(json);
  }
}

/// @nodoc
const $AttributeValue = _$AttributeValueTearOff();

/// @nodoc
mixin _$AttributeValue {
  int? get source => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeValueCopyWith<AttributeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeValueCopyWith<$Res> {
  factory $AttributeValueCopyWith(
          AttributeValue value, $Res Function(AttributeValue) then) =
      _$AttributeValueCopyWithImpl<$Res>;
  $Res call({int? source, String? id, String? name});
}

/// @nodoc
class _$AttributeValueCopyWithImpl<$Res>
    implements $AttributeValueCopyWith<$Res> {
  _$AttributeValueCopyWithImpl(this._value, this._then);

  final AttributeValue _value;
  // ignore: unused_field
  final $Res Function(AttributeValue) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeValueCopyWith<$Res>
    implements $AttributeValueCopyWith<$Res> {
  factory _$AttributeValueCopyWith(
          _AttributeValue value, $Res Function(_AttributeValue) then) =
      __$AttributeValueCopyWithImpl<$Res>;
  @override
  $Res call({int? source, String? id, String? name});
}

/// @nodoc
class __$AttributeValueCopyWithImpl<$Res>
    extends _$AttributeValueCopyWithImpl<$Res>
    implements _$AttributeValueCopyWith<$Res> {
  __$AttributeValueCopyWithImpl(
      _AttributeValue _value, $Res Function(_AttributeValue) _then)
      : super(_value, (v) => _then(v as _AttributeValue));

  @override
  _AttributeValue get _value => super._value as _AttributeValue;

  @override
  $Res call({
    Object? source = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_AttributeValue(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeValue implements _AttributeValue {
  const _$_AttributeValue({this.source, this.id, this.name});

  factory _$_AttributeValue.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeValueFromJson(json);

  @override
  final int? source;
  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'AttributeValue(source: $source, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttributeValue &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AttributeValueCopyWith<_AttributeValue> get copyWith =>
      __$AttributeValueCopyWithImpl<_AttributeValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeValueToJson(this);
  }
}

abstract class _AttributeValue implements AttributeValue {
  const factory _AttributeValue({int? source, String? id, String? name}) =
      _$_AttributeValue;

  factory _AttributeValue.fromJson(Map<String, dynamic> json) =
      _$_AttributeValue.fromJson;

  @override
  int? get source;
  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$AttributeValueCopyWith<_AttributeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

Shipping _$ShippingFromJson(Map<String, dynamic> json) {
  return _Shipping.fromJson(json);
}

/// @nodoc
class _$ShippingTearOff {
  const _$ShippingTearOff();

  _Shipping call(
      {bool? freeShipping,
      String? mode,
      List<String?>? tags,
      String? logisticType,
      bool? storePickUp}) {
    return _Shipping(
      freeShipping: freeShipping,
      mode: mode,
      tags: tags,
      logisticType: logisticType,
      storePickUp: storePickUp,
    );
  }

  Shipping fromJson(Map<String, Object?> json) {
    return Shipping.fromJson(json);
  }
}

/// @nodoc
const $Shipping = _$ShippingTearOff();

/// @nodoc
mixin _$Shipping {
  bool? get freeShipping => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;
  List<String?>? get tags => throw _privateConstructorUsedError;
  String? get logisticType => throw _privateConstructorUsedError;
  bool? get storePickUp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingCopyWith<Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCopyWith<$Res> {
  factory $ShippingCopyWith(Shipping value, $Res Function(Shipping) then) =
      _$ShippingCopyWithImpl<$Res>;
  $Res call(
      {bool? freeShipping,
      String? mode,
      List<String?>? tags,
      String? logisticType,
      bool? storePickUp});
}

/// @nodoc
class _$ShippingCopyWithImpl<$Res> implements $ShippingCopyWith<$Res> {
  _$ShippingCopyWithImpl(this._value, this._then);

  final Shipping _value;
  // ignore: unused_field
  final $Res Function(Shipping) _then;

  @override
  $Res call({
    Object? freeShipping = freezed,
    Object? mode = freezed,
    Object? tags = freezed,
    Object? logisticType = freezed,
    Object? storePickUp = freezed,
  }) {
    return _then(_value.copyWith(
      freeShipping: freeShipping == freezed
          ? _value.freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      logisticType: logisticType == freezed
          ? _value.logisticType
          : logisticType // ignore: cast_nullable_to_non_nullable
              as String?,
      storePickUp: storePickUp == freezed
          ? _value.storePickUp
          : storePickUp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingCopyWith<$Res> implements $ShippingCopyWith<$Res> {
  factory _$ShippingCopyWith(_Shipping value, $Res Function(_Shipping) then) =
      __$ShippingCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? freeShipping,
      String? mode,
      List<String?>? tags,
      String? logisticType,
      bool? storePickUp});
}

/// @nodoc
class __$ShippingCopyWithImpl<$Res> extends _$ShippingCopyWithImpl<$Res>
    implements _$ShippingCopyWith<$Res> {
  __$ShippingCopyWithImpl(_Shipping _value, $Res Function(_Shipping) _then)
      : super(_value, (v) => _then(v as _Shipping));

  @override
  _Shipping get _value => super._value as _Shipping;

  @override
  $Res call({
    Object? freeShipping = freezed,
    Object? mode = freezed,
    Object? tags = freezed,
    Object? logisticType = freezed,
    Object? storePickUp = freezed,
  }) {
    return _then(_Shipping(
      freeShipping: freeShipping == freezed
          ? _value.freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      logisticType: logisticType == freezed
          ? _value.logisticType
          : logisticType // ignore: cast_nullable_to_non_nullable
              as String?,
      storePickUp: storePickUp == freezed
          ? _value.storePickUp
          : storePickUp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipping implements _Shipping {
  const _$_Shipping(
      {this.freeShipping,
      this.mode,
      this.tags,
      this.logisticType,
      this.storePickUp});

  factory _$_Shipping.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingFromJson(json);

  @override
  final bool? freeShipping;
  @override
  final String? mode;
  @override
  final List<String?>? tags;
  @override
  final String? logisticType;
  @override
  final bool? storePickUp;

  @override
  String toString() {
    return 'Shipping(freeShipping: $freeShipping, mode: $mode, tags: $tags, logisticType: $logisticType, storePickUp: $storePickUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shipping &&
            const DeepCollectionEquality()
                .equals(other.freeShipping, freeShipping) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.logisticType, logisticType) &&
            const DeepCollectionEquality()
                .equals(other.storePickUp, storePickUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(freeShipping),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(logisticType),
      const DeepCollectionEquality().hash(storePickUp));

  @JsonKey(ignore: true)
  @override
  _$ShippingCopyWith<_Shipping> get copyWith =>
      __$ShippingCopyWithImpl<_Shipping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingToJson(this);
  }
}

abstract class _Shipping implements Shipping {
  const factory _Shipping(
      {bool? freeShipping,
      String? mode,
      List<String?>? tags,
      String? logisticType,
      bool? storePickUp}) = _$_Shipping;

  factory _Shipping.fromJson(Map<String, dynamic> json) = _$_Shipping.fromJson;

  @override
  bool? get freeShipping;
  @override
  String? get mode;
  @override
  List<String?>? get tags;
  @override
  String? get logisticType;
  @override
  bool? get storePickUp;
  @override
  @JsonKey(ignore: true)
  _$ShippingCopyWith<_Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}
