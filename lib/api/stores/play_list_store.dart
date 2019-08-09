import 'package:flutter_music/api/models/play_list_detail_entity.dart';
import 'package:flutter_music/api/models/play_list_entity.dart';
import 'package:flutter_music/api/services/play_list_detail_service.dart';
import 'package:flutter_music/api/services/play_list_service.dart';
import 'package:mobx/mobx.dart';

part 'play_list_store.g.dart';

class PlayListStore = _PlayListStoreBase with _$PlayListStore;

abstract class _PlayListStoreBase with Store {
  @observable
  ObservableFuture<List<Tracks>> listFuture;

  @action
  Future load(String limit, String order) async {
    PlayListEntity list = await PlayListService().getPlayList(limit, order);

    listFuture = ObservableFuture(PlayListDetailService()
        .getPlayListDetail(list.playlists[0].id.toString())
        .then((PlayListDetailEntity result) => result.playlist.tracks));
  }
}

PlayListStore $store = PlayListStore();
