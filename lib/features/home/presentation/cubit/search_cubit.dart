import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/utils/disposable.dart';
import '../../domain/models/search_entity.dart';
import '../../domain/search_datasource.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> with Disposable {
  SearchCubit(this._datasource) : super(const SearchState.init()) {
    _featchLatestVisited();
  }

  final SearchDatasource _datasource;

  void searchQuery(String query) {
    _search(query: query);
  }

  void searchProduct({required String query, int offset = 0}) {
    _search(query: query, offset: offset, isSearch: false);
  }

  void _search({
    bool isSearch = true,
    required String query,
    int offset = 0,
  }) {
    emit(SearchStateResult(
        type: isSearch ? StateType.seach : StateType.result,
        products: state.products, isSearchLoading: true));

    _datasource
        .search(query: query, offset: isSearch ? 0 : offset)
        .debounceTime(const Duration(seconds: 4))
        .listen((SearchEntity searchEntity) async {
      Set<String> words = {};
      if (isSearch) {
        words = await Future<Set<String>>.microtask(() {
          return searchEntity.searchResults.map((SearchResultEntity r) {
            return (r.title ?? '')
                .split(' ')
                .where((element) => element.isNotEmpty)
                .first;
          }).toSet();
        });
      }
      emit(state.copyWith(
          searchItems: isSearch ? null : searchEntity,
          searchWords: words,
          type: isSearch ? StateType.seach : StateType.result,  isSearchLoading: false));
    }, onError: (Object error) {
      addError(error);
    }).subscribe(this);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }

  void addLatestVisitProduct({required SearchResultEntity product}) {
    _datasource.addLatestProduct(product).listen(
        (List<SearchResultEntity> value) {
      emit(state.copyWith(products: value));
    }, onError: (Object _) {
      //TODO
    }).subscribe(this);
  }

  void _featchLatestVisited() {
    _datasource.getLatestVisitedProducts().listen(
        (List<SearchResultEntity> product) {
      emit(state.copyWith(products: product));
    }, onError: (Object error) {
      //TODO
    });
  }
}
