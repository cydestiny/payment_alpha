import 'package:mobx/mobx.dart';
part 'homeStore.g.dart';

class homeStore = HomeStoreBase with _$homeStore;

abstract class HomeStoreBase with Store {
  @observable
  int activeNavBarIndex = 0;

  @action
  void changeNavBarIndex(int index) {
    activeNavBarIndex = index;
  }
}
