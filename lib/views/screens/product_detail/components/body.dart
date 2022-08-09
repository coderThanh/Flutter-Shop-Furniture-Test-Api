import 'package:flutter/material.dart';

import '../../../../models/product.dart';
import 'body_description.dart';
import 'body_top.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BodyTop(product: product),
          BodyDescription(product: product),
        ],
      ),
    );
  }
}
