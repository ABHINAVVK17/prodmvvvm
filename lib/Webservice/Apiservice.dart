import 'dart:convert';
import 'package:prodmvvvm/model/Promodelist.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import '../model/Products.dart';
import 'dart:convert';
import '../model/Products.dart';
import 'package:http/http.dart' as http;


class ApiService{
  Future<List<Products>?> fetchProducts() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/products"));
    print("api called");
    if (response.statusCode == 200) {
      var jsondata=jsonDecode(response.body.toString());
      var data=Promodelist.fromJson(jsondata);
      var products=data.products;
      return products;
    } else {
      throw Exception();
    }
  }
}


