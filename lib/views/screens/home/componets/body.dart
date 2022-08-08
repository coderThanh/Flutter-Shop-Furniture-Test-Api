import 'package:flutter/material.dart';

import '../../../../models/constant_theme.dart';
import 'body_categoryies.dart';
import 'body_products.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: ConstTheme.padding * 0.5,
          bottom: ConstTheme.padding * 2,
        ),
        child: Column(
          children: const [
            HomeCategories(),
            HomeProducts(),
          ],
        ),
      ),
    );
  }
}
