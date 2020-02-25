import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_cart/app/models/product_model.dart';
import 'package:shopping_cart/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: controller.products?.length,
          itemBuilder: (BuildContext context, int index) {
            ProductModel product = controller.products[index];

            return ListTile(
              title: Text(product.name),
              subtitle: Text('${product.quantity} itens'),
              leading: Icon(Icons.fastfood),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
