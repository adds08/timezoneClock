import 'package:LSTime/features/dailyreport/incident/incident.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'incident.dart';

part 'selected.incident.provider.g.dart';
part 'selected.incident.provider.freezed.dart';

@freezed
class SelectedIncidentState with _$SelectedIncidentState {
  const factory SelectedIncidentState.init(IncidentForm incident) = Init;
  const factory SelectedIncidentState.updating() = Updating;
  const factory SelectedIncidentState.updated(IncidentForm incident) = Updated;
  const factory SelectedIncidentState.error(String? errorMessage) = Error;
}

@Riverpod(keepAlive: true)
class SelectedIncidentForm extends _$SelectedIncidentForm {
  late IncidentForm selectedIncident;

  @override
  SelectedIncidentState build() {
    selectedIncident = IncidentForm.init();
    return SelectedIncidentState.init(selectedIncident);
  }

  void setSelected(String incidentID) {
    final incidentProvider = ref.read(incidentProviderProvider.notifier).incidents;
    selectedIncident = incidentProvider.firstWhere((incident) => incident.id == incidentID);
    state = Updated(selectedIncident);
  }

  void editSelected(String incidentID, IncidentForm newForm) {
    state = Updating();
    selectedIncident = newForm;
    ref.read(incidentProviderProvider.notifier).editIncident(incidentID, newForm);
    state = Updated(selectedIncident);
  }
}
