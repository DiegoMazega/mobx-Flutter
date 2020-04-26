// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _Todo, Store {
  final _$favoriteAtom = Atom(name: '_Todo.favorite');

  @override
  bool get favorite {
    _$favoriteAtom.context.enforceReadPolicy(_$favoriteAtom);
    _$favoriteAtom.reportObserved();
    return super.favorite;
  }

  @override
  set favorite(bool value) {
    _$favoriteAtom.context.conditionallyRunInAction(() {
      super.favorite = value;
      _$favoriteAtom.reportChanged();
    }, _$favoriteAtom, name: '${_$favoriteAtom.name}_set');
  }

  final _$_TodoActionController = ActionController(name: '_Todo');

  @override
  void isfavorite() {
    final _$actionInfo = _$_TodoActionController.startAction();
    try {
      return super.isfavorite();
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }
}
