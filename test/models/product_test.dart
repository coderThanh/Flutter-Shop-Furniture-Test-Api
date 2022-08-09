import 'package:furniture_api_app/models/product.dart';
import 'package:test/test.dart';

void main() {
  group(
    "class Product",
    () {
      test(
        'test method copywith euqual ',
        () async {
          // Settup
          Product product = const Product(
            id: '1',
            title: 'Title',
            createdAt: "createdAt",
            category: 'char',
            subTitle: 'subtitle',
            price: 1500,
          );
          // Action
          Product productExpect = product.copyWith();

          // Expect
          expect(product, productExpect);
        },
      );
      test(
        'value of copywith  change parent not change',
        () async {
          // Settup
          Product product = const Product(
            id: '1',
            title: 'Title',
            createdAt: "createdAt",
            category: 'char',
            subTitle: 'subtitle',
            price: 1500,
          );

          // Action
          Product productExpect = product.copyWith(title: 'Title 1');

          // Expect
          expect(product != productExpect, true);
        },
      );
      test(
        'get product fromJson',
        () async {
          // Settup
          Product productExpect = const Product(
              id: "1",
              createdAt: "2020-07-28T15:08:21.105Z",
              title: "Wood Frame",
              price: 1500,
              category: "Chair",
              image: "https://i.imgur.com/sI4GvE6.png",
              subTitle: "Tieton Armchair",
              description:
                  "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.");

          // Action
          Product product = Product.fromJson({
            "id": "1",
            "createdAt": "2020-07-28T15:08:21.105Z",
            "title": "Wood Frame",
            "price": 1500,
            "category": "Chair",
            "image": "https://i.imgur.com/sI4GvE6.png",
            "subTitle": "Tieton Armchair",
            "description":
                "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work."
          });

          // Expect
          expect(product, productExpect);
        },
      );
    },
  );
}
