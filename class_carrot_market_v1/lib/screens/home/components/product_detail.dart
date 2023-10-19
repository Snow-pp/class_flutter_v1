import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: textTheme().titleMedium),
        Text('${product.address} • ${product.publishedAt}'),
        Text('${product.price}원', style: textTheme().displayMedium),
        _buildIcons(),
      ],
    ));
  }

  Widget _buildIcons() {
    return Row(
      children: [

      ],
    );
  }
}
