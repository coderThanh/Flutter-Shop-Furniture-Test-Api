import 'package:furniture_api_app/models/category.dart';
import 'package:test/test.dart';
import 'package:furniture_api_app/services/fetch_categories.dart';

void main() {
  group(
    'Fetch Categories',
    () {
      test(
        'get data from api',
        () async {
          Uri url = Uri.parse(
              'https://5f210aa9daa42f001666535e.mockapi.io/api/categories');

          List<Category> result = await fetchCategories(url: url);
          List<Category> expectdata = [
            const Category(id: '1', title: 'title', numOfProducts: 100)
          ];

          expect(result[0].id, expectdata[0].id);
        },
      );
      test(
        'error when get data from api',
        () async {
          try {
            Uri url = Uri.parse(
                'https://5f210aa9daa42f001666535e.mockapi.io/api/categories1111');
            await fetchCategories(url: url);
          } catch (e) {
            expect(e, 'Fetch error status 404 failed to connected API');
          }
        },
      );
    },
  );
}
