import 'dart:async';
import 'package:LSTime/features/dailyreport/jha/incident.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'incident.repo.g.dart';

// @riverpod
// FutureOr<Incident>(Ref ref) {
//   return;
// }

@riverpod
class IncidentRepo extends _$IncidentRepo {
  List<IncidentForm> listMockData = [];

  @override
  FutureOr<List<IncidentForm>> build() {
    return _listIncidents();
  }

  FutureOr<List<IncidentForm>> _listIncidents() async {
    return listMockData.map((incident) => incident).toList();
  }

  FutureOr<void> postIncident(IncidentForm incident) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      listMockData.add(incident);
      return _listIncidents();
    });
  }

  FutureOr<void> deleteIncident(incident) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      listMockData.removeWhere(
        (element) => element == incident,
      );
      return _listIncidents();
    });
  }
}
