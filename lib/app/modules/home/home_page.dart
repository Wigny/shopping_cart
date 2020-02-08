import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_cart/app/models/cart_model.dart';
import 'package:shopping_cart/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Carrinhos"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: controller.cartList.length,
          itemBuilder: (BuildContext context, int index) {
            CartModel cart = controller.cartList[index];
            return ListTile(
              title: Text(cart.name),
              subtitle: Text('${cart.products.length} itens'),
              leading: Icon(Icons.shopping_cart),
            );
          },
        ),
      ),
    );
  }
}
