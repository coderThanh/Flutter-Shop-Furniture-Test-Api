import 'package:flutter/material.dart';

import '../../../../models/product.dart';
import '../../../../services/fetch_products.dart';
import '../../../widgets/grid_products_widget.dart';
import '../../../widgets/loading_widget.dart';
import '../../../widgets/title_section_widget.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Uri url =
        Uri.parse('https://5f210aa9daa42f001666535e.mockapi.io/api/products');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSection(title: "Recommands For You"),
            FutureBuilder(
              future: fetchProducts(url),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Product> products = snapshot.data as List<Product>;

                  return GridProducts(
                    products: products,
                  );
                }
                return const Loading();
              },
            ),
          ],
        ),
      ],
    );
  }
}
