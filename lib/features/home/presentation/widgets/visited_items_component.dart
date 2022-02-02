import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/dependecy_injection/di.dart';
import '../../domain/models/search_entity.dart';
import '../cubit/search_cubit.dart';
import 'visited_item.dart';

class VisitedItemsComponent extends ConsumerWidget {
  const VisitedItemsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SearchCubit _cubit = ref.watch(SearchDi.searchCubitProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: StreamBuilder<SearchState>(
            stream: _cubit.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data!.products.isNotEmpty) {
                return SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      const Text('Visited Products'),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(4),
                          scrollDirection: Axis.horizontal,
                          children: snapshot.data!.products
                              .map<Widget>(
                                (SearchResultEntity p) =>
                                    VisitedItem(product: p),
                              )
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            }),
      ),
    );
  }
}
