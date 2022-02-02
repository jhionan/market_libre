// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEntityTearOff {
  const _$SearchEntityTearOff();

  _SearchEntity call(
      {required List<SearchResultEntity> searchResults, int offSet = 0}) {
    return _SearchEntity(
      searchResults: searchResults,
      offSet: offSet,
    );
  }
}

/// @nodoc
const $SearchEntity = _$SearchEntityTearOff();

/// @nodoc
mixin _$SearchEntity {
  List<SearchResultEntity> get searchResults =>
      throw _privateConstructorUsedError;
  int get offSet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEntityCopyWith<SearchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEntityCopyWith<$Res> {
  factory $SearchEntityCopyWith(
          SearchEntity value, $Res Function(SearchEntity) then) =
      _$SearchEntityCopyWithImpl<$Res>;
  $Res call({List<SearchResultEntity> searchResults, int offSet});
}

/// @nodoc
class _$SearchEntityCopyWithImpl<$Res> implements $SearchEntityCopyWith<$Res> {
  _$SearchEntityCopyWithImpl(this._value, this._then);

  final SearchEntity _value;
  // ignore: unused_field
  final $Res Function(SearchEntity) _then;

  @override
  $Res call({
    Object? searchResults = freezed,
    Object? offSet = freezed,
  }) {
    return _then(_value.copyWith(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
      offSet: offSet == freezed
          ? _value.offSet
          : offSet // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchEntityCopyWith<$Res>
    implements $SearchEntityCopyWith<$Res> {
  factory _$SearchEntityCopyWith(
          _SearchEntity value, $Res Function(_SearchEntity) then) =
      __$SearchEntityCopyWithImpl<$Res>;
  @override
  $Res call({List<SearchResultEntity> searchResults, int offSet});
}

/// @nodoc
class __$SearchEntityCopyWithImpl<$Res> extends _$SearchEntityCopyWithImpl<$Res>
    implements _$SearchEntityCopyWith<$Res> {
  __$SearchEntityCopyWithImpl(
      _SearchEntity _value, $Res Function(_SearchEntity) _then)
      : super(_value, (v) => _then(v as _SearchEntity));

  @override
  _SearchEntity get _value => super._value as _SearchEntity;

  @override
  $Res call({
    Object? searchResults = freezed,
    Object? offSet = freezed,
  }) {
    return _then(_SearchEntity(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
      offSet: offSet == freezed
          ? _value.offSet
          : offSet // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchEntity implements _SearchEntity {
  _$_SearchEntity({required this.searchResults, this.offSet = 0});

  @override
  final List<SearchResultEntity> searchResults;
  @JsonKey()
  @override
  final int offSet;

  @override
  String toString() {
    return 'SearchEntity(searchResults: $searchResults, offSet: $offSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEntity &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults) &&
            const DeepCollectionEquality().equals(other.offSet, offSet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchResults),
      const DeepCollectionEquality().hash(offSet));

  @JsonKey(ignore: true)
  @override
  _$SearchEntityCopyWith<_SearchEntity> get copyWith =>
      __$SearchEntityCopyWithImpl<_SearchEntity>(this, _$identity);
}

abstract class _SearchEntity implements SearchEntity {
  factory _SearchEntity(
      {required List<SearchResultEntity> searchResults,
      int offSet}) = _$_SearchEntity;

  @override
  List<SearchResultEntity> get searchResults;
  @override
  int get offSet;
  @override
  @JsonKey(ignore: true)
  _$SearchEntityCopyWith<_SearchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchResultEntityTearOff {
  const _$SearchResultEntityTearOff();

  _SearchResultEntity call(
      {@Id() int dbId = Isar.autoIncrement,
      String? id = '',
      String? title = '',
      required String price,
      String? currency = 'USD',
      String? condition = '',
      String? thumbnail = '',
      String attributesJson = '',
      List<ResultAttribute>? attributes = const <ResultAttribute>[]}) {
    return _SearchResultEntity(
      dbId: dbId,
      id: id,
      title: title,
      price: price,
      currency: currency,
      condition: condition,
      thumbnail: thumbnail,
      attributesJson: attributesJson,
      attributes: attributes,
    );
  }
}

/// @nodoc
const $SearchResultEntity = _$SearchResultEntityTearOff();

/// @nodoc
mixin _$SearchResultEntity {
  @Id()
  int get dbId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get attributesJson => throw _privateConstructorUsedError;
  List<ResultAttribute>? get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultEntityCopyWith<SearchResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEntityCopyWith<$Res> {
  factory $SearchResultEntityCopyWith(
          SearchResultEntity value, $Res Function(SearchResultEntity) then) =
      _$SearchResultEntityCopyWithImpl<$Res>;
  $Res call(
      {@Id() int dbId,
      String? id,
      String? title,
      String price,
      String? currency,
      String? condition,
      String? thumbnail,
      String attributesJson,
      List<ResultAttribute>? attributes});
}

/// @nodoc
class _$SearchResultEntityCopyWithImpl<$Res>
    implements $SearchResultEntityCopyWith<$Res> {
  _$SearchResultEntityCopyWithImpl(this._value, this._then);

  final SearchResultEntity _value;
  // ignore: unused_field
  final $Res Function(SearchResultEntity) _then;

  @override
  $Res call({
    Object? dbId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? condition = freezed,
    Object? thumbnail = freezed,
    Object? attributesJson = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      dbId: dbId == freezed
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      attributesJson: attributesJson == freezed
          ? _value.attributesJson
          : attributesJson // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<ResultAttribute>?,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultEntityCopyWith<$Res>
    implements $SearchResultEntityCopyWith<$Res> {
  factory _$SearchResultEntityCopyWith(
          _SearchResultEntity value, $Res Function(_SearchResultEntity) then) =
      __$SearchResultEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@Id() int dbId,
      String? id,
      String? title,
      String price,
      String? currency,
      String? condition,
      String? thumbnail,
      String attributesJson,
      List<ResultAttribute>? attributes});
}

/// @nodoc
class __$SearchResultEntityCopyWithImpl<$Res>
    extends _$SearchResultEntityCopyWithImpl<$Res>
    implements _$SearchResultEntityCopyWith<$Res> {
  __$SearchResultEntityCopyWithImpl(
      _SearchResultEntity _value, $Res Function(_SearchResultEntity) _then)
      : super(_value, (v) => _then(v as _SearchResultEntity));

  @override
  _SearchResultEntity get _value => super._value as _SearchResultEntity;

  @override
  $Res call({
    Object? dbId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? condition = freezed,
    Object? thumbnail = freezed,
    Object? attributesJson = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_SearchResultEntity(
      dbId: dbId == freezed
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      attributesJson: attributesJson == freezed
          ? _value.attributesJson
          : attributesJson // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<ResultAttribute>?,
    ));
  }
}

/// @nodoc

class _$_SearchResultEntity implements _SearchResultEntity {
  _$_SearchResultEntity(
      {@Id() this.dbId = Isar.autoIncrement,
      this.id = '',
      this.title = '',
      required this.price,
      this.currency = 'USD',
      this.condition = '',
      this.thumbnail = '',
      this.attributesJson = '',
      this.attributes = const <ResultAttribute>[]});

  @JsonKey()
  @override
  @Id()
  final int dbId;
  @JsonKey()
  @override
  final String? id;
  @JsonKey()
  @override
  final String? title;
  @override
  final String price;
  @JsonKey()
  @override
  final String? currency;
  @JsonKey()
  @override
  final String? condition;
  @JsonKey()
  @override
  final String? thumbnail;
  @JsonKey()
  @override
  final String attributesJson;
  @JsonKey()
  @override
  final List<ResultAttribute>? attributes;

  @override
  String toString() {
    return 'SearchResultEntity(dbId: $dbId, id: $id, title: $title, price: $price, currency: $currency, condition: $condition, thumbnail: $thumbnail, attributesJson: $attributesJson, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchResultEntity &&
            const DeepCollectionEquality().equals(other.dbId, dbId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.attributesJson, attributesJson) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dbId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(attributesJson),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$SearchResultEntityCopyWith<_SearchResultEntity> get copyWith =>
      __$SearchResultEntityCopyWithImpl<_SearchResultEntity>(this, _$identity);
}

abstract class _SearchResultEntity implements SearchResultEntity {
  factory _SearchResultEntity(
      {@Id() int dbId,
      String? id,
      String? title,
      required String price,
      String? currency,
      String? condition,
      String? thumbnail,
      String attributesJson,
      List<ResultAttribute>? attributes}) = _$_SearchResultEntity;

  @override
  @Id()
  int get dbId;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String get price;
  @override
  String? get currency;
  @override
  String? get condition;
  @override
  String? get thumbnail;
  @override
  String get attributesJson;
  @override
  List<ResultAttribute>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$SearchResultEntityCopyWith<_SearchResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
