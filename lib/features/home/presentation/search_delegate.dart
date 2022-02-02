import 'package:flutter/material.dart';

import 'cubit/search_cubit.dart';

class ProductSearchDelegate extends SearchDelegate<void> {
  ProductSearchDelegate(this._cubit);

  final SearchCubit _cubit;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear_outlined),
          onPressed: () {
            showSuggestions(context);
            query = '';
          },
        ),
      IconButton(
        key: const ValueKey<String>('searchDelegate'),
        icon: const Icon(Icons.search),
        onPressed: () {
          Navigator.of(context).pop();
          if (query.isNotEmpty) {
            _cubit.searchProduct(query: query);
          }
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isNotEmpty) {
      _cubit.searchProduct(query: query);
    }
    Future.microtask(() {
      Navigator.of(context).pop();
    });
    return const SizedBox.shrink();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      _cubit.searchQuery(query);
    }
    return _SearchResultBuilder(bloc: _cubit);
  }
}

class _SearchResultBuilder extends StatelessWidget {
  const _SearchResultBuilder({
    Key? key,
    required SearchCubit bloc,
  })  : _cubit = bloc,
        super(key: key);

  final SearchCubit _cubit;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SearchState>(
      stream: _cubit.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<String> searchWords =
              snapshot.data!.searchWords.toList();
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: searchWords.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  _cubit.searchProduct(query: searchWords[index]);
                },
                child: Text(searchWords[index]),
              );
            },
            separatorBuilder: (context, _) {
              return const Padding(
                padding: EdgeInsets.all(4),
                child: Divider(),
              );
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
