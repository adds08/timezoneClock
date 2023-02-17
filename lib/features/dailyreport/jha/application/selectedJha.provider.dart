import 'package:LSTime/features/dailyreport/jha/application/jha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/model/jha.model.dart';
import 'package:LSTime/features/dailyreport/jha/model/jhacrew.model.dart';
import 'package:LSTime/features/dailyreport/jha/model/jhaincident.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selectedJha.provider.g.dart';

@Riverpod(keepAlive: true)
class SelectedJHA extends _$SelectedJHA {
  List<JHAModel> pStates = [];
  List<JHAModel> fStates = [];

  @override
  JHAModel build() {
    return JHAModel.init();
  }

// add crew function
  void addCrew(JHACrewModel crew) {
    List<JHACrewModel> crews = [...state.crews, crew];
    JHAModel updatedJHA = state.copyWith(crews: crews);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // remove crew function
  void removeCrew(int index) {
    List<JHACrewModel> tempcrews = [...state.crews];
    tempcrews.removeAt(index);
    JHAModel updatedJHA = state.copyWith(crews: tempcrews);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // update crew function
  void updateCrew(int index, JHACrewModel crew) {
    List<JHACrewModel> newcrews = [];
    for (int i = 0; i < state.crews.length; i++) {
      if (i == index) {
        newcrews.add(crew);
        continue;
      }
      newcrews.add(state.crews[i]);
    }
    JHAModel updatedJHA = state.copyWith(crews: newcrews);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // add incident function
  void addIncident(JHAIncidentModel incident) {
    List<JHAIncidentModel> incidents = [...state.incidents, incident];
    JHAModel updatedJHA = state.copyWith(incidents: incidents);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // remove incident function
  void removeIncident(int index) {
    List<JHAIncidentModel> tempIncidents = [...state.incidents];
    tempIncidents.removeAt(index);
    JHAModel updatedJHA = state.copyWith(incidents: tempIncidents);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // update incident function
  void updateIncident(int index, JHAIncidentModel incident) {
    List<JHAIncidentModel> newIncidents = [];
    for (int i = 0; i < state.incidents.length; i++) {
      if (i == index) {
        newIncidents.add(incident);
        continue;
      }
      newIncidents.add(state.incidents[i]);
    }
    JHAModel updatedJHA = state.copyWith(incidents: newIncidents);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // add machinery function
  void addMachinery(String machinery) {
    List<String> machineries = [...state.machineryList, machinery];
    JHAModel updatedJHA = state.copyWith(machineryList: machineries);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // remove machinery function
  void removeMachinery(int index) {
    List<String> tempMachineries = [...state.machineryList];
    tempMachineries.removeAt(index);
    JHAModel updatedJHA = state.copyWith(machineryList: tempMachineries);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // update machinery function
  void updateMachinery(int index, String machinery) {
    List<String> newMachineries = [];
    for (int i = 0; i < state.machineryList.length; i++) {
      if (i == index) {
        newMachineries.add(machinery);
        continue;
      }
      newMachineries.add(state.machineryList[i]);
    }
    JHAModel updatedJHA = state.copyWith(machineryList: newMachineries);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // add tool function
  void addTool(String tool) {
    List<String> tools = [...state.toolsList, tool];
    JHAModel updatedJHA = state.copyWith(toolsList: tools);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // remove tool function
  void removeTool(int index) {
    List<String> tempTools = [...state.toolsList];
    tempTools.removeAt(index);
    JHAModel updatedJHA = state.copyWith(toolsList: tempTools);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // update tool function
  void updateTool(int index, String tool) {
    List<String> newTools = [];
    for (int i = 0; i < state.toolsList.length; i++) {
      if (i == index) {
        newTools.add(tool);
        continue;
      }
      newTools.add(state.toolsList[i]);
    }
    JHAModel updatedJHA = state.copyWith(toolsList: newTools);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // add ppe function
  void addPpe(String ppe) {
    List<String> ppes = [...state.ppeList, ppe];
    JHAModel updatedJHA = state.copyWith(ppeList: ppes);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // remove ppe function
  void removePpe(int index) {
    List<String> tempPpes = [...state.ppeList];
    tempPpes.removeAt(index);
    JHAModel updatedJHA = state.copyWith(ppeList: tempPpes);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  // update ppe function
  void updatePpe(int index, String ppe) {
    List<String> newPpes = [];
    for (int i = 0; i < state.ppeList.length; i++) {
      if (i == index) {
        newPpes.add(ppe);
        continue;
      }
      newPpes.add(state.ppeList[i]);
    }
    JHAModel updatedJHA = state.copyWith(ppeList: newPpes);
    ref.read(jHANotifierProvider.notifier).update(state.id, updatedJHA);
    setState = updatedJHA;
  }

  void create() {
    JHAModel newJHAModel = JHAModel.init();
    ref.read(jHANotifierProvider.notifier).add(newJHAModel);
    setState = newJHAModel;
  }

  void select(JHAModel jha) {
    setState = jha;
  }

  void update(JHAModel jha) {
    ref.read(jHANotifierProvider.notifier).update(state.id, jha);
    setState = jha;
  }

  set setState(JHAModel newState) {
    pStates.add(state);
    state = newState;
  }

  void undo() {
    fStates.add(state);
    state = pStates.last;
    pStates.removeLast();
  }

  void redo() {
    pStates.add(state);
    state = fStates.first;
    fStates.removeAt(0);
  }

  get lengthOfUndos => pStates.length;
  get lengthOfRedos => fStates.length;
}
