import 'package:flutter/material.dart';

import '../../../../models/constant_theme.dart';
import '../../../../models/product.dart';
import '../../../../models/style_theme_light.dart';

class BodyDescription extends StatelessWidget {
  const BodyDescription({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 30,
        left: ConstTheme.padding,
        right: ConstTheme.padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle ?? product.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(overflow: TextOverflow.visible),
          ),
          const SizedBox(height: 20),
          Text(
            product.description.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(overflow: TextOverflow.visible),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: StyleTheme.primary,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
