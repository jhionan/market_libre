
import 'package:flutter_test/flutter_test.dart';
import 'package:market_libre/core/db/isar_db.dart';
import 'package:market_libre/features/home/data/api/search_api.dart';
import 'package:market_libre/features/home/data/models/search_dto.dart';
import 'package:market_libre/features/home/domain/models/search_entity.dart';
import 'package:market_libre/features/home/domain/search_datasource.dart';
import 'package:market_libre/features/home/presentation/cubit/search_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../stubs/search_stub.dart';
import 'search_cubit_test.mocks.dart';

@GenerateMocks(<Type>[SearchApi, IsarDb])
void main() {
  MockSearchApi _searchApi = MockSearchApi();
  MockIsarDb _db = MockIsarDb();

  SearchCubit _searchCubitFactory() {
    return SearchCubit(SearchDatasource(_searchApi, _db));
  }

  group('Search Cubit', () {
    setUp(() {
      when(_searchApi.search(any, any, any))
          .thenAnswer((_) => Stream<SearchDto>.value(searchResultStubed()));
      when(_db.getResult()).thenAnswer((_) => Future.value([]));
    });

    test('Search Event', () async {
      SearchCubit _cubit = _searchCubitFactory();

      //First event is called by constructor trying to load anyd visited produc
      //second event load the Set of words that we show on the sugestion at search
      //view
      expect(
          _cubit.stream,
          emitsInAnyOrder(<Object?>[
            const SearchState(
                searchItems: null,
                searchWords: {},
                type: StateType.seach,
                products: []),
            const SearchState(
                searchItems: null,
                searchWords: {
                  'Notebook',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
                  '9',
                  '10'
                },
                type: StateType.seach,
                products: [])
          ]));
      _cubit.searchQuery('query');
      await untilCalled(_searchApi.search(any, any, any));
      verify(_searchApi.search(any, any, any)).called(1);
      verify(_db.getResult()).called(1);
    });

    test('Result event', () async {
      SearchCubit _cubit = _searchCubitFactory();

      final SearchEntity result = SearchEntity.fromDto(searchResultStubed());

      int streamCount = 0;
      _cubit.stream.listen(expectAsync1(
        (event) {
          if (streamCount == 0) {
            expect(
                event,
                const SearchState(
                    searchItems: null,
                    searchWords: {},
                    type: StateType.result,
                    products: []));
          } else if (streamCount == 1) {
            expect(
                event,
                SearchState(
                    searchItems: result,
                    searchWords: {},
                    type: StateType.result,
                    products: []));
          }
          streamCount++;
        },
        count: 2,
      ));

      _cubit.searchProduct(query: 'query');
      await untilCalled(_searchApi.search(any, any, any));
      verify(_searchApi.search(any, any, any)).called(1);
      verify(_db.getResult()).called(1);
    });
  });
}
