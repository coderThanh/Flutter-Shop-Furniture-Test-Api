import 'package:flutter/material.dart';

import '../../models/constant_theme.dart';
import '../../models/gif_theme.dart';

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: ConstTheme.padding),
      child: Center(
          child: Image.asset(
        GifTheme.ripple,
        width: 50,
        height: 50,
      )),
    );
  }
}
