import 'dart:io';

import 'package:flutter_music/api/models/banner_entity.dart';
import 'package:flutter_music/api/services/banner_service.dart';
import 'package:mobx/mobx.dart';

part 'banner_store.g.dart';

class BannerStore = _BannerStoreBase with _$BannerStore;

abstract class _BannerStoreBase with Store {
  @observable
  ObservableFuture<List<Banners>> bannersFuture;

  @action
  Future load() async {
    String _type;
    if (Platform.isAndroid) {
      _type = '1';
    } else if (Platform.isIOS) {
      _type = '2';
    } else {
      _type = '0';
    }
    bannersFuture = ObservableFuture(BannerService()
        .getBanners(_type)
        .then((BannerEntity result) => result.banners));
  }
}

BannerStore $store = BannerStore();
