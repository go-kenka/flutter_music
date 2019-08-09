// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_album_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$TopAlbumStore on _TopAlbumStoreBase, Store {
  final _$albumsFutureAtom = Atom(name: '_TopAlbumStoreBase.albumsFuture');

  @override
  ObservableFuture<List<Albums>> get albumsFuture {
    _$albumsFutureAtom.context.enforceReadPolicy(_$albumsFutureAtom);
    _$albumsFutureAtom.reportObserved();
    return super.albumsFuture;
  }

  @override
  set albumsFuture(ObservableFuture<List<Albums>> value) {
    _$albumsFutureAtom.context.conditionallyRunInAction(() {
      super.albumsFuture = value;
      _$albumsFutureAtom.reportChanged();
    }, _$albumsFutureAtom, name: '${_$albumsFutureAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }
}
