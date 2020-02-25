import 'package:shopping_cart/app/models/product_model.dart';

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
        products: List<ProductModel>.from(
          json["products"].map(
            (x) => ProductModel.fromJson(x),
          ),
        ),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "products": List<dynamic>.from(
          products.map(
            (x) => x.toJson(),
          ),
        ),
      };
}
