import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/api/models/play_list_entity.dart';
import 'package:flutter_music/api/models/top_album_entity.dart';
import 'package:flutter_music/api/services/album_service.dart';
import 'package:flutter_music/api/services/top_list_service.dart';
import 'package:mobx/mobx.dart';

part 'top_list_store.g.dart';

class TopListStore = _TopListStoreBase with _$TopListStore;

abstract class _TopListStoreBase with Store {
  @observable
  ObservableFuture<List<Tracks>> listFuture;

  @action
  Future load(String idx) async {
    listFuture = ObservableFuture(TopListService()
        .getTopList(idx)
        .then((PlayListDetailEntity result) => result.playlist.tracks));
  }
}

TopListStore $store = TopListStore();
