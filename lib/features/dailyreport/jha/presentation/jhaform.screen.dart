import 'dart:convert';
import 'dart:typed_data';

import 'package:LSTime/features/dailyreport/jha/application/selectedJha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/common_widgets/jhaform.widgets.dart';
import 'package:LSTime/features/dailyreport/jha/model/jha.model.dart';
import 'package:LSTime/features/dailyreport/jha/model/jhacrew.model.dart';
import 'package:LSTime/features/dailyreport/jha/model/jhaincident.model.dart';
import 'package:LSTime/utils/signature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JHAFormScreen extends ConsumerStatefulWidget {
  const JHAFormScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _JHAFormScreenState();
}

class _JHAFormScreenState extends ConsumerState<JHAFormScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController companyController = TextEditingController();
  TextEditingController segmentController = TextEditingController();
  TextEditingController workPlanController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController competentPersonController = TextEditingController();
  TextEditingController supervisorController = TextEditingController();
  TextEditingController certifiedPersonController = TextEditingController();
  TextEditingController certifiedFlaggerController = TextEditingController();
  TextEditingController taskController = TextEditingController();
  List<TextEditingController> incidentStepsController = [];
  List<TextEditingController> incidentHazardController = [];
  List<TextEditingController> incidentActionController = [];
  List<TextEditingController> machineryListController = [];
  List<TextEditingController> toolListController = [];
  List<TextEditingController> ppeListController = [];

  @override
  void initState() {
    super.initState();
    companyController = TextEditingController(text: ref.read(selectedJHAProvider).company);
    segmentController = TextEditingController(text: ref.read(selectedJHAProvider).segment);
    workPlanController = TextEditingController(text: ref.read(selectedJHAProvider).workPlan);
    dateController = TextEditingController(text: ref.read(selectedJHAProvider).date);
    competentPersonController = TextEditingController(text: ref.read(selectedJHAProvider).competentPerson);
    supervisorController = TextEditingController(text: ref.read(selectedJHAProvider).supervisor);
    certifiedPersonController = TextEditingController(text: ref.read(selectedJHAProvider).certifiedPerson);
    certifiedFlaggerController = TextEditingController(text: ref.read(selectedJHAProvider).certifiedFlagger);
    taskController = TextEditingController(text: ref.read(selectedJHAProvider).task);
  }

  @override
  Widget build(BuildContext context) {
    incidentStepsController = [];
    incidentHazardController = [];
    incidentActionController = [];
    machineryListController = [];
    toolListController = [];
    ppeListController = [];
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text("Save & Cancel")),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("Save & Upload")),
            // const Spacer(),
            // IconButton(
            //   onPressed: () {
            //     if (ref.read(selectedJHAProvider.notifier).lengthOfUndos > 0) {
            //       ref.read(selectedJHAProvider.notifier).undo();
            //     }
            //   },
            //   icon: const Icon(Icons.undo),
            // ),
            // IconButton(
            //   onPressed: () {
            //     if (ref.read(selectedJHAProvider.notifier).lengthOfRedos > 0) {
            //       ref.read(selectedJHAProvider.notifier).redo();
            //     }
            //   },
            //   icon: const Icon(Icons.redo),
            // ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SelectionArea(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        TablePaddedCell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UrbanJHAText("Company (Empresa)"),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(company: companyController.text);
                                    ref.read(selectedJHAProvider.notifier).update(newJHA);
                                  }
                                },
                                child: UrbanJHATextFormField(
                                  controller: companyController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TablePaddedCell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UrbanJHAText("Segment"),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(segment: segmentController.text);
                                    ref.read(selectedJHAProvider.notifier).update(newJHA);
                                  }
                                },
                                child: UrbanJHATextFormField(
                                  controller: segmentController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TablePaddedCell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UrbanJHAText("Work Plan #"),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(workPlan: workPlanController.text);
                                    ref.read(selectedJHAProvider.notifier).update(newJHA);
                                  }
                                },
                                child: UrbanJHATextFormField(
                                  controller: workPlanController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TablePaddedCell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UrbanJHAText("Date (Fecha)"),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(date: dateController.text);
                                    ref.read(selectedJHAProvider.notifier).update(newJHA);
                                  }
                                },
                                child: UrbanJHATextFormField(
                                  onPressed: () async {
                                    DateTime? date = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now().subtract(const Duration(days: 30)),
                                        lastDate: DateTime.now().add(const Duration(days: 30)));

                                    if (date != null) {
                                      dateController.text = date.toString().split(" ")[0];
                                    }
                                  },
                                  controller: dateController,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TablePaddedCell(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const UrbanJHAText("Day (Dia)"),
                                    Radio(
                                        groupValue: ref.watch(selectedJHAProvider.select((value) => value.isNight)),
                                        value: false,
                                        onChanged: (value) {
                                          JHAModel newModel = ref.read(selectedJHAProvider).copyWith(isNight: value ?? false);
                                          ref.read(selectedJHAProvider.notifier).update(newModel);
                                        }),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const UrbanJHAText("Night (Noche)"),
                                    Radio(
                                        groupValue: ref.watch(selectedJHAProvider.select((value) => value.isNight)),
                                        value: true,
                                        onChanged: (value) {
                                          JHAModel newModel = ref.read(selectedJHAProvider).copyWith(isNight: value ?? false);
                                          ref.read(selectedJHAProvider.notifier).update(newModel);
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])
                    ],
                  ),
                  // end of first row table
                  Table(
                    border: const TableBorder(
                      top: BorderSide.none,
                      bottom: BorderSide.none,
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      verticalInside: BorderSide(color: Colors.black),
                    ),
                    children: [
                      TableRow(
                        children: [
                          TablePaddedCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UrbanJHAText("Competent Person (Persona Competente)"),
                                Focus(
                                  onFocusChange: (value) {
                                    if (!value) {
                                      JHAModel newJHA =
                                          ref.read(selectedJHAProvider).copyWith(competentPerson: competentPersonController.text);
                                      ref.read(selectedJHAProvider.notifier).update(newJHA);
                                    }
                                  },
                                  child: UrbanJHATextFormField(
                                    hintText: "Name / Nombre",
                                    controller: competentPersonController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TablePaddedCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UrbanJHAText("Supervisor"),
                                Focus(
                                  onFocusChange: (value) {
                                    if (!value) {
                                      JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(supervisor: supervisorController.text);
                                      ref.read(selectedJHAProvider.notifier).update(newJHA);
                                    }
                                  },
                                  child: UrbanJHATextFormField(
                                    hintText: "Name / Nombre",
                                    controller: supervisorController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // end of second table

                  Table(
                    border: const TableBorder(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide.none,
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      verticalInside: BorderSide(color: Colors.black),
                    ),
                    children: [
                      TableRow(
                        children: [
                          TablePaddedCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UrbanJHAText("Certified FA/CPR Person (Persona Certificada de Primeros Auxilios)"),
                                Focus(
                                  onFocusChange: (value) {
                                    if (!value) {
                                      JHAModel newJHA =
                                          ref.read(selectedJHAProvider).copyWith(certifiedPerson: certifiedPersonController.text);
                                      ref.read(selectedJHAProvider.notifier).update(newJHA);
                                    }
                                  },
                                  child: UrbanJHATextFormField(
                                    hintText: "Name / Nombre",
                                    controller: certifiedPersonController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TablePaddedCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UrbanJHAText("Certified Flagger (Abanderado Certificado)"),
                                Focus(
                                  onFocusChange: (value) {
                                    if (!value) {
                                      JHAModel newJHA =
                                          ref.read(selectedJHAProvider).copyWith(certifiedFlagger: certifiedFlaggerController.text);
                                      ref.read(selectedJHAProvider.notifier).update(newJHA);
                                    }
                                  },
                                  child: UrbanJHATextFormField(
                                    hintText: "Name / Nombre",
                                    controller: certifiedFlaggerController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // end of third table row
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(
                        children: [
                          TablePaddedCell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const UrbanJHAText("TASK (Tarea)"),
                                Focus(
                                  onFocusChange: (value) {
                                    if (!value) {
                                      JHAModel newJHA = ref.read(selectedJHAProvider).copyWith(task: taskController.text);
                                      ref.read(selectedJHAProvider.notifier).update(newJHA);
                                    }
                                  },
                                  child: UrbanJHATextFormField(
                                    controller: taskController,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // start of hazard plan step table
                  Table(
                    border: TableBorder.all(color: Colors.black),
                    columnWidths: const {
                      0: FlexColumnWidth(5),
                      1: FlexColumnWidth(5),
                      2: FlexColumnWidth(5),
                      3: FlexColumnWidth(1),
                    },
                    children: [
                      const TableRow(
                        children: [
                          TablePaddedCell(
                            child: UrbanJHAText("Steps necessary to complete the task \n(Pasos necesarios para completar la tarea)"),
                          ),
                          TablePaddedCell(
                            child: UrbanJHAText("Hazards of each step \n(Peligros de cada paso)"),
                          ),
                          TablePaddedCell(
                            child: UrbanJHAText("Actions taken to prevent hazards \n(Medidas para prevenir peligros)"),
                          ),
                          TablePaddedCell(
                            child: UrbanJHAText("Remove"),
                          ),
                        ],
                      ),
                      ...List<TableRow>.generate(
                        ref.watch(selectedJHAProvider).incidents.length,
                        (index) {
                          incidentStepsController.add(TextEditingController(text: ref.read(selectedJHAProvider).incidents[index].steps));
                          incidentHazardController.add(TextEditingController(text: ref.read(selectedJHAProvider).incidents[index].hazard));
                          incidentActionController.add(TextEditingController(text: ref.read(selectedJHAProvider).incidents[index].action));
                          return TableRow(
                            children: [
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAIncidentModel newIncident =
                                        ref.read(selectedJHAProvider).incidents[index].copyWith(steps: incidentStepsController[index].text);
                                    ref.read(selectedJHAProvider.notifier).updateIncident(index, newIncident);
                                  }
                                },
                                child: TablePaddedCell(
                                  child: UrbanJHATextFormField(
                                    controller: incidentStepsController[index],
                                  ),
                                ),
                              ),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAIncidentModel newIncident = ref
                                        .read(selectedJHAProvider)
                                        .incidents[index]
                                        .copyWith(hazard: incidentHazardController[index].text);
                                    ref.read(selectedJHAProvider.notifier).updateIncident(index, newIncident);
                                  }
                                },
                                child: TablePaddedCell(
                                  child: UrbanJHATextFormField(
                                    controller: incidentHazardController[index],
                                  ),
                                ),
                              ),
                              Focus(
                                onFocusChange: (value) {
                                  if (!value) {
                                    JHAIncidentModel newIncident = ref
                                        .read(selectedJHAProvider)
                                        .incidents[index]
                                        .copyWith(action: incidentActionController[index].text);
                                    ref.read(selectedJHAProvider.notifier).updateIncident(index, newIncident);
                                  }
                                },
                                child: TablePaddedCell(
                                  child: UrbanJHATextFormField(
                                    controller: incidentActionController[index],
                                  ),
                                ),
                              ),
                              TablePaddedCell(
                                child: TextButton(
                                  child: const Icon(Icons.delete),
                                  onPressed: () {
                                    ref.read(selectedJHAProvider.notifier).removeIncident(index);
                                  },
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  // add incident button
                  MaterialButton(
                    color: Colors.grey.shade200,
                    shape: const Border(
                        bottom: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black)),
                    onPressed: () {
                      JHAIncidentModel newIncident = JHAIncidentModel.fromJson({});
                      ref.read(selectedJHAProvider.notifier).addIncident(newIncident);
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // start of list of machinery, tools and ppe
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // list of machinery
                      Expanded(
                        child: Table(
                          border: TableBorder.all(color: Colors.black),
                          children: [
                            const TableRow(
                              children: [
                                TablePaddedCell(
                                  child: UrbanJHAText(
                                      "LIST THE MACHINERY THAT WILL BE USED FOR THIS JOB \n(En listé la maquinarias que se utilizarán para este trabajo)\n\n"),
                                )
                              ],
                            ),
                            ...List<TableRow>.generate(
                              ref.watch(selectedJHAProvider).machineryList.length,
                              (index) {
                                machineryListController
                                    .add(TextEditingController(text: ref.read(selectedJHAProvider).machineryList[index]));
                                return TableRow(
                                  children: [
                                    Focus(
                                      onFocusChange: (value) {
                                        if (!value) {
                                          ref
                                              .read(selectedJHAProvider.notifier)
                                              .updateMachinery(index, machineryListController[index].text);
                                        }
                                      },
                                      child: TablePaddedCell(
                                        child: UrbanJHATextFormField(
                                          controller: machineryListController[index],
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                ref.read(selectedJHAProvider.notifier).removeMachinery(index);
                                              },
                                              icon: const Icon(Icons.delete)),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            TableRow(
                              children: [
                                MaterialButton(
                                  color: Colors.grey.shade200,
                                  onPressed: () {
                                    ref.read(selectedJHAProvider.notifier).addMachinery("");
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // list of tools
                      Expanded(
                        child: Table(
                          border: TableBorder.all(color: Colors.black),
                          children: [
                            const TableRow(
                              children: [
                                TablePaddedCell(
                                  child: UrbanJHAText(
                                      "LIST THE TOOLS THAT WILL BE USED FOR THIS JOB \n(En listé las herramientas que se utilizarán para este trabajo)\n\n"),
                                )
                              ],
                            ),
                            ...List<TableRow>.generate(
                              ref.watch(selectedJHAProvider).toolsList.length,
                              (index) {
                                toolListController.add(TextEditingController(text: ref.read(selectedJHAProvider).toolsList[index]));
                                return TableRow(
                                  children: [
                                    Focus(
                                      onFocusChange: (value) {
                                        if (!value) {
                                          ref.read(selectedJHAProvider.notifier).updateTool(index, toolListController[index].text);
                                        }
                                      },
                                      child: TablePaddedCell(
                                        child: UrbanJHATextFormField(
                                          controller: toolListController[index],
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                ref.read(selectedJHAProvider.notifier).removeTool(index);
                                              },
                                              icon: const Icon(Icons.delete)),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            TableRow(
                              children: [
                                MaterialButton(
                                  color: Colors.grey.shade200,
                                  onPressed: () {
                                    ref.read(selectedJHAProvider.notifier).addTool("");
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // list of special PPE
                      Expanded(
                        child: Table(
                          border: TableBorder.all(color: Colors.black),
                          children: [
                            const TableRow(
                              children: [
                                TablePaddedCell(
                                  child: UrbanJHAText(
                                      "LIST THE SPECIAL PPE REQUIRED FOR JOB \n(Listé los equipos especiales de protección personal necesario para esta tarea)\n\n"),
                                )
                              ],
                            ),
                            ...List<TableRow>.generate(
                              ref.watch(selectedJHAProvider).ppeList.length,
                              (index) {
                                ppeListController.add(TextEditingController(text: ref.read(selectedJHAProvider).ppeList[index]));
                                return TableRow(
                                  children: [
                                    Focus(
                                      onFocusChange: (value) {
                                        if (!value) {
                                          ref.read(selectedJHAProvider.notifier).updatePpe(index, ppeListController[index].text);
                                        }
                                      },
                                      child: TablePaddedCell(
                                        child: UrbanJHATextFormField(
                                          controller: ppeListController[index],
                                          suffixIcon: IconButton(
                                              onPressed: () {
                                                ref.read(selectedJHAProvider.notifier).removePpe(index);
                                              },
                                              icon: const Icon(Icons.delete)),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            TableRow(
                              children: [
                                MaterialButton(
                                  color: Colors.grey.shade200,
                                  onPressed: () {
                                    ref.read(selectedJHAProvider.notifier).addPpe("");
                                  },
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: JHACheckListRequirementsTable(
                          title: "EQUIREMENTS IN PLACE?",
                          subtitle: "(¿REQUISITOS Establecidos?)",
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            JHACheckListInspectionTable(
                              title: "DAILY INSPECTIONS COMPLETED?",
                              subtitle: "(¿INSPECCIÓNES DIARIAS COMPLETAS?)",
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            JHACheckListPermitsTable(
                              title: "PERMITS (PERMISOS)",
                              subtitle: "",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // start to list all crew members
                  const JHACrewList(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JHACrewList extends ConsumerWidget {
  const JHACrewList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TextEditingController> crewController = [];
    void popContext() {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Table(
          border: TableBorder.all(color: Colors.black),
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(100),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            const TableRow(children: [
              TablePaddedCell(child: UrbanJHAText("Name")),
              TablePaddedCell(child: UrbanJHAText("Signature")),
              TablePaddedCell(child: UrbanJHAText("Remove")),
            ]),
            ...List<TableRow>.generate(
              ref.watch(selectedJHAProvider).crews.length,
              (index) {
                crewController.add(TextEditingController(text: ref.read(selectedJHAProvider).crews[index].name));
                return TableRow(
                  children: [
                    Focus(
                      onFocusChange: (value) {
                        if (!value) {
                          JHACrewModel newCrew = ref.read(selectedJHAProvider).crews[index].copyWith(name: crewController[index].text);
                          ref.read(selectedJHAProvider.notifier).updateCrew(index, newCrew);
                        }
                      },
                      child: TablePaddedCell(
                        child: UrbanJHATextFormField(
                          controller: crewController[index],
                        ),
                      ),
                    ),
                    TablePaddedCell(
                      child: (ref.read(selectedJHAProvider).crews[index].signature != null)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.memory(
                                  base64.decode(ref.read(selectedJHAProvider.select((value) => value.crews[index].signature!))),
                                  scale: 0.25,
                                  height: 75,
                                  cacheHeight: 75,
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                IconButton(
                                    onPressed: () {
                                      JHACrewModel newCrew = ref.read(selectedJHAProvider).crews[index].copyWith(signature: null);
                                      ref.read(selectedJHAProvider.notifier).updateCrew(index, newCrew);
                                    },
                                    icon: const Icon(Icons.clear))
                              ],
                            )
                          : TextButton(
                              onPressed: () {
                                SignatureController signController = SignatureController();
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: SizedBox(
                                        width: 3 * MediaQuery.of(context).size.width / 10,
                                        height: 5 * MediaQuery.of(context).size.height / 10,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(18),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  border: Border.all(
                                                    width: 2.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  child: Signature(
                                                    controller: signController,
                                                    backgroundColor: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                TextButton(
                                                  child: const Text("Clear"),
                                                  onPressed: () => signController.clear(),
                                                ),
                                                TextButton(
                                                  child: const Text("Done"),
                                                  onPressed: () async {
                                                    Uint8List? imageBytes = await signController.toPngBytes();
                                                    if (imageBytes != null) {
                                                      String imageData = base64.encode((imageBytes));
                                                      JHACrewModel newCrew =
                                                          ref.read(selectedJHAProvider).crews[index].copyWith(signature: imageData);
                                                      ref.read(selectedJHAProvider.notifier).updateCrew(index, newCrew);
                                                    }
                                                    popContext();
                                                  },
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Text("Add Signature"),
                            ),
                    ),
                    IconButton(
                        onPressed: () {
                          ref.read(selectedJHAProvider.notifier).removeCrew(index);
                        },
                        icon: const Icon(Icons.delete))
                  ],
                );
              },
            ),
          ],
        ),
        MaterialButton(
          color: Colors.grey.shade200,
          shape: const Border(
              bottom: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),
          onPressed: () {
            JHACrewModel newCrew = JHACrewModel.fromJson({});
            ref.read(selectedJHAProvider.notifier).addCrew(newCrew);
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class JHACheckListPermitsTable extends ConsumerWidget {
  final String title;
  final String subtitle;

  const JHACheckListPermitsTable({super.key, this.title = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Table(
      border: TableBorder.all(color: Colors.black),
      columnWidths: const {
        0: FlexColumnWidth(8),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            TablePaddedCell(
              child: UrbanJHAText("$title\n$subtitle"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("Yes"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("N/A"),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Utility Locate Permit (Localización de Utilidades)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.utility)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(utility: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.utility)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(utility: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Close Proximity (Proximidad de Líneas Eléctricas)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.proximity)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(proximity: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.proximity)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(proximity: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Confined Space (Espacio Confinado)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.confinedSpace)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(confinedSpace: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.confinedSpace)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(confinedSpace: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Hot Work (Trabajo en Caliente)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.hotWork)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(hotWork: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.hotWork)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(hotWork: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}

class JHACheckListInspectionTable extends ConsumerWidget {
  final String title;
  final String subtitle;

  const JHACheckListInspectionTable({super.key, this.title = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Table(
      border: TableBorder.all(color: Colors.black),
      columnWidths: const {
        0: FlexColumnWidth(8),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            TablePaddedCell(
              child: UrbanJHAText("$title\n$subtitle"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("Yes"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("N/A"),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("All Machinery (Todos las Maquinarias)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.machinery)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(machinery: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.machinery)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(machinery: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Tools and equipment (Herramientas de mano y equipos)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.toolsAndEquipment)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(toolsAndEquipment: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.toolsAndEquipment)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(toolsAndEquipment: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Excavations (Excavaciones)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.excavations)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(excavations: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.excavations)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(excavations: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Scaffolds (Andamios)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.scaffolds)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(scaffolds: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.scaffolds)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(scaffolds: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}

class JHACheckListRequirementsTable extends ConsumerWidget {
  final String title;
  final String subtitle;

  const JHACheckListRequirementsTable({super.key, this.title = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Table(
      border: TableBorder.all(color: Colors.black),
      columnWidths: const {
        0: FlexColumnWidth(8),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            TablePaddedCell(
              child: UrbanJHAText("$title\n$subtitle"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("Yes"),
            ),
            const TablePaddedCell(
              child: UrbanJHAText("N/A"),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Shade for employees (Sombra para empleados)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.shades)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(shades: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.shades)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(shades: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Drinking water (Agua para beber)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.water)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(water: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.water)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(water: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Paper cups (Vasos de papel)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.paperCups)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(paperCups: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.paperCups)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(paperCups: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Trash containers (Contenedores de basura)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.trashes)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(trashes: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.trashes)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(trashes: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Restrooms (Baños)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.restrooms)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(restrooms: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.restrooms)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(restrooms: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Fire extinguishers (Extinguidores)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.extinguishers)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(extinguishers: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.extinguishers)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(extinguishers: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("GFCIs (Interruptores de circuitos a tierra)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.gfcis)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(gfcis: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.gfcis)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(gfcis: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Work area protection (Protección de área de trabajo)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.workAreaProtection)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(workAreaProtection: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.workAreaProtection)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(workAreaProtection: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("First aid kit (Botiquín de primeros auxilios)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.firstAidKit)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(firstAidKit: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.firstAidKit)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(firstAidKit: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
        TableRow(
          children: [
            const TablePaddedCell(
              child: UrbanJHAText("Crane Critical Lift Plan (Plan de grua para levantamiento critico)"),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.craneLiftPlan)),
                  value: true,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(craneLiftPlan: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
            TablePaddedCell(
              child: Radio(
                  groupValue: ref.watch(selectedJHAProvider.select((value) => value.craneLiftPlan)),
                  value: false,
                  onChanged: (value) {
                    JHAModel newModel = ref.read(selectedJHAProvider).copyWith(craneLiftPlan: value ?? false);
                    ref.read(selectedJHAProvider.notifier).update(newModel);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
