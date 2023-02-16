import 'package:LSTime/features/dailyreport/jha/model/jha.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jha.provider.g.dart';

@riverpod
class JHANotifier extends _$JHANotifier {
  @override
  List<JHAModel> build() {
    return [];
  }

  int get length => state.length;

  List<JHAModel> getAll() {
    return state;
  }

  JHAModel getByID(String id) {
    return state.singleWhere((element) => element.id == id);
  }

  void add(JHAModel jha) {
    state = [...state, jha];
  }

  void update(String id, JHAModel newjha) {
    List<JHAModel> temp = [];
    for (int i = 0; i < state.length; i++) {
      if (state[i].id == id) {
        temp.add(newjha);
      } else {
        temp.add(state[i]);
      }
    }
    state = [...temp];
  }

  void delete(String id) {
    List<JHAModel> temp = [];
    for (int i = 0; i < state.length; i++) {
      if (state[i].id != id) {
        temp.add(state[i]);
      }
    }
    state = [...temp];
  }
}
