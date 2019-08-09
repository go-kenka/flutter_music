import 'package:flutter_music/api/models/play_song_entity.dart';
import 'package:flutter_music/api/services/play_song_service.dart';
import 'package:mobx/mobx.dart';

part 'play_song_store.g.dart';

class PlaySongStore = _PlaySongStoreBase with _$PlaySongStore;

abstract class _PlaySongStoreBase with Store {
  @observable
  ObservableFuture<List<Data>> songsFuture;

  @action
  Future load(String id) async {
    songsFuture = ObservableFuture(PlaySongService()
        .getPlaySong(id)
        .then((PlaySongEntity result) => result.data));
  }
}

PlaySongStore $store = PlaySongStore();
