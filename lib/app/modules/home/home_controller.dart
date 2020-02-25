import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shopping_cart/app/models/product_model.dart';
import 'package:shopping_cart/app/modules/home/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final HomeRepository _repository = Modular.get();

  _HomeBase() {
    getProducts();
  }

  @computed
  ObservableList<ProductModel> get products =>
      _productsStream?.value?.asObservable();

  @observable
  ObservableStream<List<ProductModel>> _productsStream;

  @action
  void getProducts() {
    _productsStream = _repository.data.asObservable();
  }
}
