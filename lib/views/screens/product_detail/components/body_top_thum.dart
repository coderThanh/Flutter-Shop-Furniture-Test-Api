import 'package:flutter/material.dart';

import '../../../../models/gif_theme.dart';
import '../../../../models/product.dart';
import '../../../widgets/check_condition_widget.dart';

class BodyTopThum extends StatelessWidget {
  const BodyTopThum({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      width: size.width * 0.6,
      bottom: 0,
      right: 0,
      child: CheckCondition(
        exception: product.image != null,
        ifTrue: AspectRatio(
          aspectRatio: 0.75,
          child: Hero(
            tag: product.id,
            child: FadeInImage.assetNetwork(
              placeholder: GifTheme.spinner,
              image: product.image.toString(),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomLeft,
            ),
          ),
        ),
      ),
    );
  }
}
