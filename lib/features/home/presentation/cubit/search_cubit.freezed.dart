// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchStateResult call(
      {SearchEntity? searchItems,
      Set<String> searchWords = const <String>{},
      StateType type = StateType.seach,
      List<SearchResultEntity> products = const <SearchResultEntity>[],
      bool isSearchLoading = false}) {
    return SearchStateResult(
      searchItems: searchItems,
      searchWords: searchWords,
      type: type,
      products: products,
      isSearchLoading: isSearchLoading,
    );
  }

  SearchStateInit init(
      {SearchEntity? searchItems,
      Set<String> searchWords = const <String>{},
      StateType type = StateType.seach,
      List<SearchResultEntity> products = const <SearchResultEntity>[],
      bool isSearchLoading = false}) {
    return SearchStateInit(
      searchItems: searchItems,
      searchWords: searchWords,
      type: type,
      products: products,
      isSearchLoading: isSearchLoading,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  SearchEntity? get searchItems => throw _privateConstructorUsedError;
  Set<String> get searchWords => throw _privateConstructorUsedError;
  StateType get type => throw _privateConstructorUsedError;
  List<SearchResultEntity> get products => throw _privateConstructorUsedError;
  bool get isSearchLoading => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        $default, {
    required TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateResult value) $default, {
    required TResult Function(SearchStateInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchEntity? searchItems,
      Set<String> searchWords,
      StateType type,
      List<SearchResultEntity> products,
      bool isSearchLoading});

  $SearchEntityCopyWith<$Res>? get searchItems;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? searchWords = freezed,
    Object? type = freezed,
    Object? products = freezed,
    Object? isSearchLoading = freezed,
  }) {
    return _then(_value.copyWith(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
      searchWords: searchWords == freezed
          ? _value.searchWords
          : searchWords // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
      isSearchLoading: isSearchLoading == freezed
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SearchEntityCopyWith<$Res>? get searchItems {
    if (_value.searchItems == null) {
      return null;
    }

    return $SearchEntityCopyWith<$Res>(_value.searchItems!, (value) {
      return _then(_value.copyWith(searchItems: value));
    });
  }
}

/// @nodoc
abstract class $SearchStateResultCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchStateResultCopyWith(
          SearchStateResult value, $Res Function(SearchStateResult) then) =
      _$SearchStateResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchEntity? searchItems,
      Set<String> searchWords,
      StateType type,
      List<SearchResultEntity> products,
      bool isSearchLoading});

  @override
  $SearchEntityCopyWith<$Res>? get searchItems;
}

/// @nodoc
class _$SearchStateResultCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateResultCopyWith<$Res> {
  _$SearchStateResultCopyWithImpl(
      SearchStateResult _value, $Res Function(SearchStateResult) _then)
      : super(_value, (v) => _then(v as SearchStateResult));

  @override
  SearchStateResult get _value => super._value as SearchStateResult;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? searchWords = freezed,
    Object? type = freezed,
    Object? products = freezed,
    Object? isSearchLoading = freezed,
  }) {
    return _then(SearchStateResult(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
      searchWords: searchWords == freezed
          ? _value.searchWords
          : searchWords // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
      isSearchLoading: isSearchLoading == freezed
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateResult
    with DiagnosticableTreeMixin
    implements SearchStateResult {
  const _$SearchStateResult(
      {this.searchItems,
      this.searchWords = const <String>{},
      this.type = StateType.seach,
      this.products = const <SearchResultEntity>[],
      this.isSearchLoading = false});

  @override
  final SearchEntity? searchItems;
  @JsonKey()
  @override
  final Set<String> searchWords;
  @JsonKey()
  @override
  final StateType type;
  @JsonKey()
  @override
  final List<SearchResultEntity> products;
  @JsonKey()
  @override
  final bool isSearchLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(searchItems: $searchItems, searchWords: $searchWords, type: $type, products: $products, isSearchLoading: $isSearchLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('searchWords', searchWords))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('isSearchLoading', isSearchLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchStateResult &&
            const DeepCollectionEquality()
                .equals(other.searchItems, searchItems) &&
            const DeepCollectionEquality()
                .equals(other.searchWords, searchWords) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.isSearchLoading, isSearchLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchItems),
      const DeepCollectionEquality().hash(searchWords),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(isSearchLoading));

  @JsonKey(ignore: true)
  @override
  $SearchStateResultCopyWith<SearchStateResult> get copyWith =>
      _$SearchStateResultCopyWithImpl<SearchStateResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        $default, {
    required TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        init,
  }) {
    return $default(searchItems, searchWords, type, products, isSearchLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
  }) {
    return $default?.call(
        searchItems, searchWords, type, products, isSearchLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          searchItems, searchWords, type, products, isSearchLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateResult value) $default, {
    required TResult Function(SearchStateInit value) init,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchStateResult implements SearchState {
  const factory SearchStateResult(
      {SearchEntity? searchItems,
      Set<String> searchWords,
      StateType type,
      List<SearchResultEntity> products,
      bool isSearchLoading}) = _$SearchStateResult;

  @override
  SearchEntity? get searchItems;
  @override
  Set<String> get searchWords;
  @override
  StateType get type;
  @override
  List<SearchResultEntity> get products;
  @override
  bool get isSearchLoading;
  @override
  @JsonKey(ignore: true)
  $SearchStateResultCopyWith<SearchStateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateInitCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchStateInitCopyWith(
          SearchStateInit value, $Res Function(SearchStateInit) then) =
      _$SearchStateInitCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchEntity? searchItems,
      Set<String> searchWords,
      StateType type,
      List<SearchResultEntity> products,
      bool isSearchLoading});

  @override
  $SearchEntityCopyWith<$Res>? get searchItems;
}

/// @nodoc
class _$SearchStateInitCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateInitCopyWith<$Res> {
  _$SearchStateInitCopyWithImpl(
      SearchStateInit _value, $Res Function(SearchStateInit) _then)
      : super(_value, (v) => _then(v as SearchStateInit));

  @override
  SearchStateInit get _value => super._value as SearchStateInit;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? searchWords = freezed,
    Object? type = freezed,
    Object? products = freezed,
    Object? isSearchLoading = freezed,
  }) {
    return _then(SearchStateInit(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
      searchWords: searchWords == freezed
          ? _value.searchWords
          : searchWords // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SearchResultEntity>,
      isSearchLoading: isSearchLoading == freezed
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateInit
    with DiagnosticableTreeMixin
    implements SearchStateInit {
  const _$SearchStateInit(
      {this.searchItems,
      this.searchWords = const <String>{},
      this.type = StateType.seach,
      this.products = const <SearchResultEntity>[],
      this.isSearchLoading = false});

  @override
  final SearchEntity? searchItems;
  @JsonKey()
  @override
  final Set<String> searchWords;
  @JsonKey()
  @override
  final StateType type;
  @JsonKey()
  @override
  final List<SearchResultEntity> products;
  @JsonKey()
  @override
  final bool isSearchLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.init(searchItems: $searchItems, searchWords: $searchWords, type: $type, products: $products, isSearchLoading: $isSearchLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.init'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('searchWords', searchWords))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('isSearchLoading', isSearchLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchStateInit &&
            const DeepCollectionEquality()
                .equals(other.searchItems, searchItems) &&
            const DeepCollectionEquality()
                .equals(other.searchWords, searchWords) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.isSearchLoading, isSearchLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchItems),
      const DeepCollectionEquality().hash(searchWords),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(isSearchLoading));

  @JsonKey(ignore: true)
  @override
  $SearchStateInitCopyWith<SearchStateInit> get copyWith =>
      _$SearchStateInitCopyWithImpl<SearchStateInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        $default, {
    required TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)
        init,
  }) {
    return init(searchItems, searchWords, type, products, isSearchLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
  }) {
    return init?.call(
        searchItems, searchWords, type, products, isSearchLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        $default, {
    TResult Function(
            SearchEntity? searchItems,
            Set<String> searchWords,
            StateType type,
            List<SearchResultEntity> products,
            bool isSearchLoading)?
        init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(searchItems, searchWords, type, products, isSearchLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SearchStateResult value) $default, {
    required TResult Function(SearchStateInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SearchStateResult value)? $default, {
    TResult Function(SearchStateInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SearchStateInit implements SearchState {
  const factory SearchStateInit(
      {SearchEntity? searchItems,
      Set<String> searchWords,
      StateType type,
      List<SearchResultEntity> products,
      bool isSearchLoading}) = _$SearchStateInit;

  @override
  SearchEntity? get searchItems;
  @override
  Set<String> get searchWords;
  @override
  StateType get type;
  @override
  List<SearchResultEntity> get products;
  @override
  bool get isSearchLoading;
  @override
  @JsonKey(ignore: true)
  $SearchStateInitCopyWith<SearchStateInit> get copyWith =>
      throw _privateConstructorUsedError;
}
