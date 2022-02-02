part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {SearchEntity? searchItems,
      @Default(<String>{}) Set<String> searchWords,
      @Default(StateType.seach) StateType type,
      @Default(<SearchResultEntity>[]) List<SearchResultEntity> products,
      @Default(false) bool isSearchLoading}) = SearchStateResult;

  const factory SearchState.init(
      {SearchEntity? searchItems,
      @Default(<String>{}) Set<String> searchWords,
      @Default(StateType.seach) StateType type,
      @Default(<SearchResultEntity>[]) List<SearchResultEntity> products,
      @Default(false) bool isSearchLoading}) = SearchStateInit;
}

enum StateType { seach, result }
