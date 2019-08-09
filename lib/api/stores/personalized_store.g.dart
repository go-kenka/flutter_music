// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalized_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PersonalizedStore on _PersonalizedStoreBase, Store {
  final _$personalizedFutureAtom =
      Atom(name: '_PersonalizedStoreBase.personalizedFuture');

  @override
  ObservableFuture<List<Personalized>> get personalizedFuture {
    _$personalizedFutureAtom.context
        .enforceReadPolicy(_$personalizedFutureAtom);
    _$personalizedFutureAtom.reportObserved();
    return super.personalizedFuture;
  }

  @override
  set personalizedFuture(ObservableFuture<List<Personalized>> value) {
    _$personalizedFutureAtom.context.conditionallyRunInAction(() {
      super.personalizedFuture = value;
      _$personalizedFutureAtom.reportChanged();
    }, _$personalizedFutureAtom, name: '${_$personalizedFutureAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }
}
