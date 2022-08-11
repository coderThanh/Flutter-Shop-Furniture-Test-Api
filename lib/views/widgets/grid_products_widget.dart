import 'package:flutter/material.dart';

import '../../models/constant_theme.dart';
import '../../models/product.dart';
import '../screens/product_detail/product_detail.dart';
import 'box_product_widget.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({
    Key? key,
    required this.products,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 15,
    this.mainAxisSpacing = 15,
    this.childAspecRatio = 0.68,
  }) : super(key: key);

  final List<Product> products;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double childAspecRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(
        left: ConstTheme.padding,
        right: ConstTheme.padding,
        bottom: ConstTheme.padding * 2,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        childAspectRatio: childAspecRatio,
      ),
      itemBuilder: (context, index) {
        return BoxProduct(
          product: products[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProductDetialScreen(product: products[index]),
            ),
          ),
        );
      },
    );
  }
}
