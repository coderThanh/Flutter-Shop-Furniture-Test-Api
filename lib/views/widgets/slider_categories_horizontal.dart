import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../models/constant_theme.dart';
import 'box_category_widget.dart';

class SliderCategoriesHorialtol extends StatelessWidget {
  const SliderCategoriesHorialtol({
    Key? key,
    required this.categoires,
  }) : super(key: key);

  final List<Category> categoires;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(bottom: ConstTheme.padding * 2),
      child: Row(
        children: List.generate(
            categoires.length,
            (index) => Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? ConstTheme.padding : 0,
                    right: ConstTheme.padding,
                  ),
                  child: BoxCategory(
                    category: categoires[index],
                    index: index,
                  ),
                )).toList(),
      ),
    );
  }
}
