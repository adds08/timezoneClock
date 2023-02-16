import 'package:LSTime/features/dailyreport/incident/incident.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident.provider.g.dart';
part 'incident.provider.freezed.dart';

@freezed
class IncidentState with _$IncidentState {
  const factory IncidentState.init(List<IncidentForm> incidents) = Init;
  const factory IncidentState.loading() = Loading;
  const factory IncidentState.loaded(List<IncidentForm> incidents) = Loaded;
  const factory IncidentState.error(String? errorMessage) = Error;
}

@Riverpod(keepAlive: true)
class IncidentProvider extends _$IncidentProvider {
  List<IncidentForm> incidents = [];

  @override
  IncidentState build() {
    return Loaded([...incidents]);
  }

  Future<void> addIncident(IncidentForm incident) async {
    state = Loading();
    incidents = [...incidents, incident];
    state = Loaded(incidents);
  }

  IncidentForm createIncident() {
    IncidentForm initIncident = IncidentForm.init();
    addIncident(initIncident);
    return getIncident(initIncident);
  }

  IncidentForm getIncident(IncidentForm? incident) {
    IncidentForm form = incidents.singleWhere((element) => element == incident);
    return form;
  }

  void removeIncident(IncidentForm incident) {
    incidents.removeWhere((element) => element == incident);
    state = Loaded([...incidents]);
  }

  void editIncident(String oldincidentID, IncidentForm newIncident) {
    incidents = [
      ...incidents.map((incident) {
        if (incident.id == oldincidentID) {
          return newIncident;
        }
        return incident;
      })
    ];
    state = Loaded([...incidents]);
  }
}
