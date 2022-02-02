import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/dependecy_injection/di.dart';
import 'cubit/search_cubit.dart';
import 'search_delegate.dart';
import 'widgets/result_list.dart';
import 'widgets/visited_items_component.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SearchCubit _cubit = ref.watch(SearchDi.searchCubitProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market Libre'),
        actions: [
          IconButton(
              onPressed: () => _searchButton(context, _cubit),
              icon: const Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const VisitedItemsComponent(),
            Expanded(
              child: ResultList(bloc: _cubit),
            )
          ],
        ),
      ),
    );
  }

  void _searchButton(BuildContext context, SearchCubit bloc) {
    showSearch<void>(context: context, delegate: ProductSearchDelegate(bloc),);
  }
}
