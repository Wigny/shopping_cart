// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

import 'package:shopping_cart/app/models/product_model.dart';

List<CartModel> cartModelFromJson(String str) =>
    List<CartModel>.from(json.decode(str).map((x) => CartModel.fromJson(x)));

String cartModelToJson(List<CartModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartModel {
  int id;
  String name;
  List<ProductModel> products;

  CartModel({
    this.id,
    this.name,
    this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        name: json["name"],
        products: productModelFromJson(json["products"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "products": productModelToJson(products),
      };
}
