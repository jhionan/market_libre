import 'package:flutter/material.dart';

import '../../domain/models/search_entity.dart';
import '../cubit/search_cubit.dart';
import '../product_detail.dart';

class ResultItem extends StatelessWidget {
  const ResultItem(
      {Key? key,
      required this.resultEntity,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.currency,
      required this.searchCubit})
      : super(key: key);
  factory ResultItem.fromSearchResultEntity(
      SearchResultEntity entity, SearchCubit searchCubit) {
    return ResultItem(
      imageUrl: entity.thumbnail ?? '',
      title: entity.title ?? '',
      description: entity.condition ?? '',
      price: entity.price,
      currency: entity.currency ?? '',
      resultEntity: entity,
      searchCubit: searchCubit,
    );
  }
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final String currency;
  final SearchResultEntity resultEntity;
  final SearchCubit searchCubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context, resultEntity),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Image.network(imageUrl, fit: BoxFit.fitWidth)),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                flex: 3,
                child:
                    Text(title, overflow: TextOverflow.ellipsis, maxLines: 5),
              ),
              const SizedBox(
                width: 4,
              ),
              Center(
                child: Column(
                  children: [
                    Text(price),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetail(BuildContext context, SearchResultEntity product) {
    searchCubit.addLatestVisitProduct(product: product);
    Navigator.of(context).push<void>(
      MaterialPageRoute(builder: (BuildContext context) {
        return ProductDetail(result: product);
      }),
    );
  }
}
