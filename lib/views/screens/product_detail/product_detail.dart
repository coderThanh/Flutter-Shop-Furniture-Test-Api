import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductDetialScreen extends StatelessWidget {
  const ProductDetialScreen({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(product.title)),
    );
  }
}
