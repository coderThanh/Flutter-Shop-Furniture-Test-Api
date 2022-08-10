import 'package:test/test.dart';
import 'package:furniture_api_app/models/category.dart';
import 'dart:convert' as convert;

void main() {
  group(
    'class Category',
    () {
      test(
        'copywith equal',
        () async {
          Category initCategory = const Category(
            id: '1',
            title: 'Armchair',
            numOfProducts: 100,
            image: 'https://i.imgur.com/JqKDdxj.png',
            createdAt: '2020-07-28T09:51:56.881Z',
          );

          Category copyCategory = initCategory.copyWidth();

          expect(initCategory, copyCategory);
        },
      );

      test(
        'copywith change value',
        () async {
          Category initCategory = const Category(
            id: '1',
            title: 'Armchair',
            numOfProducts: 100,
            image: 'https://i.imgur.com/JqKDdxj.png',
            createdAt: '2020-07-28T09:51:56.881Z',
          );

          Category copyCategory = initCategory.copyWidth(title: 'Armchair 1');

          expect(initCategory != copyCategory, true);
        },
      );

      test(
        'get Category frorm Json',
        () async {
          Category initCategory = const Category(
            id: '1',
            title: 'Armchair',
            numOfProducts: 100,
            image: 'https://i.imgur.com/JqKDdxj.png',
            createdAt: '2020-07-28T09:51:56.881Z',
          );

          Map<String, dynamic> source = convert.jsonDecode(
              '{"id":"1","createdAt":"2020-07-28T09:51:56.881Z","title":"Armchair","image":"https://i.imgur.com/JqKDdxj.png","numOfProducts":100}');

          Category jsonCategory = Category.fromJson(source);

          expect(initCategory, jsonCategory);
        },
      );
    },
  );
}
