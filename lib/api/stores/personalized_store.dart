import 'package:flutter_music/api/models/personalized_entity.dart';
import 'package:flutter_music/api/services/personalized_service.dart';
import 'package:mobx/mobx.dart';

part 'personalized_store.g.dart';

class PersonalizedStore = _PersonalizedStoreBase with _$PersonalizedStore;

abstract class _PersonalizedStoreBase with Store {
  @observable
  ObservableFuture<List<Personalized>> personalizedFuture;

  @action
  Future load() async {
    personalizedFuture = ObservableFuture(PersonalizedService()
        .getPersonalizedList()
        .then((PersonalizedEntity result) => result.result));
  }
}

PersonalizedStore $store = PersonalizedStore();
