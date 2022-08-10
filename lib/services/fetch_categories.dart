import 'dart:convert';

import '../models/category.dart';
import 'package:http/http.dart' as http;

Future<List<Category>> fetchCategories({required Uri url}) async {
  try {
    final res = await http.get(url);

    if (res.statusCode == 200) {
      List<Category> categories = (json.decode(res.body) as List)
          .map((data) => Category.fromJson(data))
          .toList();

      return categories;
    } else {
      return throw 'Fetch error status ${res.statusCode} failed to connected API';
    }
  } catch (e) {
    rethrow;
  }
}
