import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../models/product.dart';

Future<List<Product>> fetchProducts(Uri url) async {
  var res = await http.get(url);

  if (res.statusCode == 200) {
    List jsonRespone = convert.jsonDecode(res.body);
    List<Product> result = jsonRespone.map((data) {
      return Product.fromJson(data);
    }).toList();

    return result;
  }

  return throw Exception(
      'Status code ${res.statusCode}: Failed to load Producs from API!');
}
