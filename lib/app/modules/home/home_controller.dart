import 'package:mobx/mobx.dart';
import 'package:shopping_cart/app/models/cart_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  ObservableList<CartModel> cartList = <CartModel>[].asObservable();
}
