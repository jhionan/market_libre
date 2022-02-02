import 'package:flutter/material.dart';

import '../../domain/models/search_entity.dart';
import '../cubit/search_cubit.dart';
import 'result_item.dart';

class ResultList extends StatefulWidget {
  const ResultList({
    Key? key,
    required SearchCubit bloc,
  })  : _cubit = bloc,
        super(key: key);

  final SearchCubit _cubit;

  @override
  State<ResultList> createState() => _ResultListState();
}

class _ResultListState extends State<ResultList> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SearchState>(
      stream: widget._cubit.stream,
      builder: (BuildContext context, AsyncSnapshot<SearchState> snapshot) {
        if (snapshot.hasData &&
            snapshot.data is SearchStateResult &&
            (snapshot.data as SearchStateResult).searchItems?.searchResults !=
                null) {
          if ((snapshot.data as SearchStateResult).type != StateType.result) {
            return const SizedBox.shrink();
          }
          List<SearchResultEntity> results = [
            ...(snapshot.data as SearchStateResult).searchItems!.searchResults
          ];
          if (results.isEmpty) {
            return const Center(
              child: Text(
                'No Result found \u{1F622}',
                key: ValueKey<String>('noResultText'),
              ),
            );
          }
          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (BuildContext context, int index) {
              return ResultItem.fromSearchResultEntity(
                  results[index], widget._cubit);
            },
          );
        }
        if (snapshot.hasError) {
          return const AlertDialog();
        }
        if (snapshot.hasData && snapshot.data is SearchStateInit) {
          return const Center(
            child: Text(
              'Search some product to start =)',
              key: ValueKey<String>('initialText'),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
