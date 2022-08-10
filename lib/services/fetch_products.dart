import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../models/product.dart';

Future<List<Product>> fetchProducts({required Uri url}) async {
  try {
    var res = await http.get(url);

    if (res.statusCode == 200) {
      List jsonRespone = convert.jsonDecode(res.body);
      List<Product> result = jsonRespone.map((data) {
        return Product.fromJson(data);
      }).toList();

      return result;
    }
    return throw 'Fetch error status ${res.statusCode} failed to connected API';
  } catch (e) {
    rethrow;
  }
}
