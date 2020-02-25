// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<ObservableList<ProductModel>> _$productsComputed;

  @override
  ObservableList<ProductModel> get products => (_$productsComputed ??=
          Computed<ObservableList<ProductModel>>(() => super.products))
      .value;

  final _$_productsStreamAtom = Atom(name: '_HomeBase._productsStream');

  @override
  ObservableStream<List<ProductModel>> get _productsStream {
    _$_productsStreamAtom.context.enforceReadPolicy(_$_productsStreamAtom);
    _$_productsStreamAtom.reportObserved();
    return super._productsStream;
  }

  @override
  set _productsStream(ObservableStream<List<ProductModel>> value) {
    _$_productsStreamAtom.context.conditionallyRunInAction(() {
      super._productsStream = value;
      _$_productsStreamAtom.reportChanged();
    }, _$_productsStreamAtom, name: '${_$_productsStreamAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void getProducts() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.getProducts();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
