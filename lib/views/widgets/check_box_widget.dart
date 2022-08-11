import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/icon_theme.dart';
import 'check_condition_widget.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    Key? key,
    required this.onPress,
    this.width = 22,
    this.color = Colors.black12,
    this.checked = false,
    this.margin,
    this.padding,
  }) : super(key: key);

  final VoidCallback onPress;
  final double width;
  final Color color;
  final bool checked;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: width,
        padding: padding ?? const EdgeInsets.all(5),
        margin: margin ?? const EdgeInsets.only(bottom: 10, right: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: CheckCondition(
          exception: checked,
          ifTrue: SvgPicture.asset(IconApp.check),
        ),
      ),
    );
  }
}
