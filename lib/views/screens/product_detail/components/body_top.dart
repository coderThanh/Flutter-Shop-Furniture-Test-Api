import 'package:flutter/material.dart';

import '../../../../models/product.dart';
import '../../../../models/style_theme_light.dart';
import 'body_top_info.dart';
import 'body_top_thum.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.42,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          // Background sub
          Container(
            width: double.infinity,
            height: size.height * 0.4 - 60,
            color: StyleTheme.onText,
          ),
          BodyInfo(product: product),
          BodyTopThum(product: product),
        ],
      ),
    );
  }
}
