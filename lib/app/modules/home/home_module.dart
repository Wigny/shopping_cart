import 'package:hasura_connect/hasura_connect.dart';
import 'package:shopping_cart/app/modules/home/home_repository.dart';
import 'package:shopping_cart/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_cart/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => HomeRepository(
            i.get<HasuraConnect>(),
          ),
        ),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
