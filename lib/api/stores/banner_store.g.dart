// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$BannerStore on _BannerStoreBase, Store {
  final _$bannersFutureAtom = Atom(name: '_BannerStoreBase.bannersFuture');

  @override
  ObservableFuture<List<Banners>> get bannersFuture {
    _$bannersFutureAtom.context.enforceReadPolicy(_$bannersFutureAtom);
    _$bannersFutureAtom.reportObserved();
    return super.bannersFuture;
  }

  @override
  set bannersFuture(ObservableFuture<List<Banners>> value) {
    _$bannersFutureAtom.context.conditionallyRunInAction(() {
      super.bannersFuture = value;
      _$bannersFutureAtom.reportChanged();
    }, _$bannersFutureAtom, name: '${_$bannersFutureAtom.name}_set');
  }

  final _$loadAsyncAction = AsyncAction('load');

  @override
  Future<dynamic> load() {
    return _$loadAsyncAction.run(() => super.load());
  }
}
