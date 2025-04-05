import 'dart:convert';

import 'package:flutter_lesson_3/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  final _baseUrl = 'https://fakestoreapi.com/products';
  Future<List<ProductModel>> getProducts() async {
    //Uri uri = Uri(scheme: 'http', host: 'fakestoreapi.com', path: 'products');
    Uri uri = Uri.parse(_baseUrl);

    //Veri string olarak gelir
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      return [];
    }

    print(response);

    //Gelen stringi Map yada List e çevirir
    final decodedBody = jsonDecode(response.body);

    print(decodedBody);

    final productList = <ProductModel>[];

    //Map veriler model e çevrilip listeye eklenecek
    for (var product in decodedBody) {
      productList.add(ProductModel.fromJson(product));
    }

    return productList;
  }
}
