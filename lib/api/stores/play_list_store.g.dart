// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PlayListStore on _PlayListStoreBase, Store {
  final _$listFutureAtom = Atom(name: '_PlayListStoreBase.listFuture');

  @override
  ObservableFuture<List<Tracks>> get listFuture {
    _$listFutureAtom.context.enforceReadPolicy(_$listFutureAtom);
    _$listFutureAtom.reportObserved();
    return super.listFuture;
  }

  @override
  set listFuture(ObservableFuture<List<Tracks>> value) {
    _$listFutureAtom.context.conditionallyRunInAction(() {
      super.listFuture = value;
      _$listFutureAtom.reportChanged();
    }, _$listFutureAtom, name: '${_$listFutureAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load(String limit, String order) {
    return _$loadAsyncAction.run(() => super.load(limit, order));
  }
}
