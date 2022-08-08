import 'package:flutter/material.dart';

import '../../../../models/category.dart';
import '../../../../services/fetch_categories.dart';
import '../../../widgets/loading_widget.dart';
import '../../../widgets/slider_categories_horizontal.dart';
import '../../../widgets/title_section_widget.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uri url =
        Uri.parse('https://5f210aa9daa42f001666535e.mockapi.io/api/categories');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSection(title: "Browse by Categories"),
        FutureBuilder(
            future: fetchCategories(url: url),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Category> categoires = snapshot.data as List<Category>;

                return SliderCategoriesHorialtol(categoires: categoires);
              }

              return const Loading();
            }),
      ],
    );
  }
}
