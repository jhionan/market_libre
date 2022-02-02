import 'package:flutter/material.dart';

import '../domain/models/search_entity.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.result}) : super(key: key);
  final SearchResultEntity result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height / 3),
              child: Image.network(
                result.thumbnail ?? '',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(result.title ?? ''),
            const Divider(
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: result.attributes?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(result.attributes![index].name ?? ''),
                      subtitle: Text(
                        result.attributes![index].valueName ?? '',
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
