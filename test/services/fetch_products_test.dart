import 'package:furniture_api_app/models/product.dart';
import 'package:test/test.dart';
import 'package:furniture_api_app/services/fetch_products.dart';

void main() async {
  group(
    'Fetch product',
    () {
      test(
        'get data json from API',
        () async {
          Uri uri = Uri.parse(
              'https://5f210aa9daa42f001666535e.mockapi.io/api/products');
          List<Product> result = await fetchProducts(url: uri);

          expect(result[0].id, '1');
        },
      );

      test(
        'error data json from API',
        () async {
          try {
            Uri uri = Uri.parse(
                'https://5f210aa9daa42f001666535e.mockapi.io/api/products1');
            await fetchProducts(url: uri);
          } catch (e) {
            expect(e, 'Fetch error status 404 failed to connected API');
          }
        },
      );
    },
  );
}
