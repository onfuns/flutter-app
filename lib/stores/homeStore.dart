import 'package:mobx/mobx.dart';

part 'homeStore.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  int count = 0;
  @action
  void add() {
    count++;
  }
}
