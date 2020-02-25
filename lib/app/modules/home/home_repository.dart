import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:shopping_cart/app/models/product_model.dart';

class HomeRepository extends Disposable {
  final HasuraConnect _connection;

  HomeRepository(this._connection);

  Stream<List<ProductModel>> get data {
    final query = r"""
     subscription MySubscription {
      product(where: {cart_id: {_eq: 1}}) {
        id
        name
        quantity
      }
    }
    """;

    return _connection.subscription(query).map(_convert);
  }

  List<ProductModel> _convert(json) => json["data"]["product"]
      .map<ProductModel>(
        (i) => ProductModel.fromJson(i),
      )
      .toList();

  @override
  void dispose() {}
}
