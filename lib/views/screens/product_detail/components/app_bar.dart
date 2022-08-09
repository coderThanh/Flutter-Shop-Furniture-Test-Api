import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/constant_theme.dart';
import '../../../../models/icon_theme.dart';
import '../../../../models/style_theme_light.dart';

AppBar screenAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 50,
    backgroundColor: StyleTheme.onText,
    elevation: 5,
    shadowColor: Colors.black.withOpacity(0.0),
    leading: const SizedBox.shrink(),
    leadingWidth: 0,
    actions: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ConstTheme.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: IconButton(
                  splashRadius: 22,
                  padding: const EdgeInsets.all(0),
                  onPressed: () => Navigator.pop(context),
                  icon: SvgPicture.asset(
                    IconApp.arrowLongLeft,
                    color: StyleTheme.colorText,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: IconButton(
                  splashRadius: 22,
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    IconApp.bag,
                    color: StyleTheme.colorText,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
