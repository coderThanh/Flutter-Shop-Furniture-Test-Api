import 'package:flutter/material.dart';
import 'package:furniture_api_app/models/gif_theme.dart';
import 'package:furniture_api_app/models/style_theme_light.dart';
import 'package:furniture_api_app/views/widgets/check_condition_widget.dart';

import '../../models/product.dart';

class BoxProduct extends StatelessWidget {
  const BoxProduct({
    Key? key,
    required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          top: 5,
          bottom: 10,
        ),
        decoration: const BoxDecoration(
          color: StyleTheme.onText,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            CheckCondition(
              exception: product.image != null,
              ifTrue: AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                      placeholder: GifTheme.spinner,
                      image: product.image.toString()),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              '\$${product.price}',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: StyleTheme.colorText.withOpacity(0.7),
                  height: 1.3),
            ),
          ],
        ),
      ),
    );
  }
}
