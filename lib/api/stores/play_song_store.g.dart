// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_song_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PlaySongStore on _PlaySongStoreBase, Store {
  final _$songsFutureAtom = Atom(name: '_PlaySongStoreBase.songsFuture');

  @override
  ObservableFuture<List<Data>> get songsFuture {
    _$songsFutureAtom.context.enforceReadPolicy(_$songsFutureAtom);
    _$songsFutureAtom.reportObserved();
    return super.songsFuture;
  }

  @override
  set songsFuture(ObservableFuture<List<Data>> value) {
    _$songsFutureAtom.context.conditionallyRunInAction(() {
      super.songsFuture = value;
      _$songsFutureAtom.reportChanged();
    }, _$songsFutureAtom, name: '${_$songsFutureAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load(String id) {
    return _$loadAsyncAction.run(() => super.load(id));
  }
}
