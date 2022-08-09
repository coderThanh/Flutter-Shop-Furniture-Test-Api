import 'package:flutter/material.dart';

import '../../../models/product.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class ProductDetialScreen extends StatelessWidget {
  const ProductDetialScreen({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screenAppBar(context),
      body: Body(product: product),
    );
  }
}
