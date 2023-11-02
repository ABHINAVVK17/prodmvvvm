import 'Products.dart';
import 'dart:convert';

Promodelist promodelistFromJson(String str) => Promodelist.fromJson(json.decode(str));
String promodelistToJson(Promodelist data) => json.encode(data.toJson());
class Promodelist {
  Promodelist({
      this.products, 
      this.total, 
      this.skip, 
      this.limit,});

  Promodelist.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
  List<Products>? products;
  num? total;
  num? skip;
  num? limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    map['skip'] = skip;
    map['limit'] = limit;
    return map;
  }

}