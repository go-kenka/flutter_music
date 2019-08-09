import 'package:flutter_music/api/models/top_album_entity.dart';
import 'package:flutter_music/api/services/album_service.dart';
import 'package:mobx/mobx.dart';

part 'top_album_store.g.dart';

class TopAlbumStore = _TopAlbumStoreBase with _$TopAlbumStore;

abstract class _TopAlbumStoreBase with Store {
  @observable
  ObservableFuture<List<Albums>> albumsFuture;

  @action
  Future load() async {
    albumsFuture = ObservableFuture(AlbumService()
        .getPersonalizedList("0", "3")
        .then((TopAlbumEntity result) => result.albums));
  }
}

TopAlbumStore $store = TopAlbumStore();
