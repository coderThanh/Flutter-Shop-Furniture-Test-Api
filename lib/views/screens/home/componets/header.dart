import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/constant_theme.dart';
import '../../../../models/icon_theme.dart';
import '../../../../models/style_theme_light.dart';

AppBar header(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 5,
    shadowColor: Colors.black.withOpacity(0),
    toolbarHeight: 50,
    actions: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ConstTheme.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 25,
                height: 25,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: IconButton(
                  icon: SvgPicture.asset(
                    IconApp.menu,
                    width: 25,
                    height: 25,
                  ),
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  splashRadius: 22,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      IconApp.scan,
                      width: 22,
                      height: 22,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Scan',
                      style: TextStyle(
                        color: StyleTheme.colorText,
                        height: 1.2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
