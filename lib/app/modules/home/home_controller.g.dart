// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$cartListAtom = Atom(name: '_HomeBase.cartList');

  @override
  ObservableList<CartModel> get cartList {
    _$cartListAtom.context.enforceReadPolicy(_$cartListAtom);
    _$cartListAtom.reportObserved();
    return super.cartList;
  }

  @override
  set cartList(ObservableList<CartModel> value) {
    _$cartListAtom.context.conditionallyRunInAction(() {
      super.cartList = value;
      _$cartListAtom.reportChanged();
    }, _$cartListAtom, name: '${_$cartListAtom.name}_set');
  }
}
