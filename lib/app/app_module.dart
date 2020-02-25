import 'package:hasura_connect/hasura_connect.dart';
import 'package:shopping_cart/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart/app/app_widget.dart';
import 'package:shopping_cart/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind<HasuraConnect>(
          (i) => HasuraConnect(
            "https://shopping-list-cart.herokuapp.com/v1/graphql",
          ),
        ),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
