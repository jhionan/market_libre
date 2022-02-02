import 'package:flutter/material.dart';

import '../../domain/models/search_entity.dart';
import '../product_detail.dart';

class VisitedItem extends StatelessWidget {
  const VisitedItem({Key? key, required this.product}) : super(key: key);

  final SearchResultEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetail(context, product),
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(2, 2)
          )],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [Expanded(child: Image.network(product.thumbnail ?? ''))],
        ),
      ),
    );
  }

  void _navigateToDetail(BuildContext context, SearchResultEntity product) {
    Navigator.of(context).push<void>(
      MaterialPageRoute(builder: (BuildContext context) {
        return ProductDetail(result: product);
      }),
    );
  }
}
