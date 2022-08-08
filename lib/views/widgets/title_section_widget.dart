import 'package:flutter/material.dart';
import 'package:furniture_api_app/models/constant_theme.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
    this.padding,
  }) : super(key: key);

  final String title;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.only(
            bottom: 20,
            left: ConstTheme.padding,
            right: ConstTheme.padding,
          ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
        maxLines: 1,
      ),
    );
  }
}
