import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:market_libre/application.dart';
import 'package:market_libre/core/dependecy_injection/di.dart';
import 'package:market_libre/features/home/data/models/search_dto.dart';
import 'package:market_libre/features/home/domain/search_datasource.dart';
import 'package:market_libre/features/home/presentation/cubit/search_cubit.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';
import '../cubit/search_cubit_test.mocks.dart';
import '../stubs/search_stub.dart';

void main() {
  MockSearchApi _searchApi = MockSearchApi();
  MockIsarDb _db = MockIsarDb();

  testWidgets('Smoke test', (WidgetTester tester) async {
    when(_searchApi.search(any, any, any))
        .thenAnswer((_) => Stream<SearchDto>.value(searchResultStubed()));
    when(_db.getResult()).thenAnswer((_) => Future.value([]));
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(ProviderScope(
        child: const Application(),
        overrides: [
          SearchDi.searchCubitProvider
              .overrideWithValue(SearchCubit(SearchDatasource(_searchApi, _db)))
        ],
      ));

      //find the search button
      Finder _searchButton = find.byIcon(Icons.search);
      expect(_searchButton, findsOneWidget);

      await tester.tap(_searchButton);
      await tester.pumpAndSettle();

      //expect navigate to SearchView
      Finder _textField = find.byType(TextField);
      expect(_textField, findsOneWidget);

      Finder _searchButtonDelegate =
          find.byKey(const ValueKey<String>('searchDelegate'));

      expect(_searchButtonDelegate, findsOneWidget);
    });
  });
}
