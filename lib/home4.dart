import 'package:LSTime/features/dailyreport/incident/incident.dart';
import 'package:LSTime/features/dailyreport/incident/incident.provider.dart';
import 'package:LSTime/features/dailyreport/incident/selected.incident.provider.dart';
import 'package:LSTime/features/dailyreport/jha/presentation/jhaList.screen.dart';
import 'package:LSTime/features/safetyhr/employeematrix/employeematrix.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<List<String>> incidentList = [];

class UrbanHomeScreen4 extends StatefulWidget {
  const UrbanHomeScreen4({super.key});

  @override
  State<UrbanHomeScreen4> createState() => _UrbanHomeScreen4State();
}

class _UrbanHomeScreen4State extends State<UrbanHomeScreen4> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              groupAlignment: groupAligment,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: labelType,
              leading: showLeading
                  ? FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: const Icon(Icons.add),
                    )
                  : const SizedBox(),
              trailing: showTrailing
                  ? IconButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      icon: const Icon(Icons.more_horiz_rounded),
                    )
                  : const SizedBox(),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('Employee Matrix'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Experimental'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('JHA Report'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.

            if (_selectedIndex == 0) ...[
              const Expanded(child: EmployeeMatrixScreen()),
              // const Expanded(child: JHAFormScreen()),
            ] else if (_selectedIndex == 1) ...[
              const Expanded(child: IncidentListWidget()),
            ] else ...[
              const Expanded(child: JHAScreen()),
            ]
          ],
        ),
      ),
    );
  }
}

class IncidentListWidget extends ConsumerWidget {
  const IncidentListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MenuBar(
          children: <Widget>[
            SubmenuButton(
              menuChildren: <Widget>[
                MenuItemButton(
                  onPressed: () {},
                  child: const MenuAcceleratorLabel('&Refresh'),
                ),
                MenuItemButton(
                  onPressed: () async {
                    IncidentForm newIncident = ref.read(incidentProviderProvider.notifier).createIncident();
                    ref.read(selectedIncidentFormProvider.notifier).setSelected(newIncident.id);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const SizedBox(
                            width: 800,
                            child: IncidentFormWidget(),
                          );
                        });
                  },
                  child: const MenuAcceleratorLabel('&Create'),
                ),
                MenuItemButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Quit!'),
                      ),
                    );
                  },
                  child: const MenuAcceleratorLabel('&Quit'),
                ),
              ],
              child: const MenuAcceleratorLabel('&File'),
            ),
            SubmenuButton(
              menuChildren: <Widget>[
                MenuItemButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Magnify!'),
                      ),
                    );
                  },
                  child: const MenuAcceleratorLabel('&Magnify'),
                ),
                MenuItemButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Minify!'),
                      ),
                    );
                  },
                  child: const MenuAcceleratorLabel('Mi&nify'),
                ),
              ],
              child: const MenuAcceleratorLabel('&View'),
            ),
          ],
        ),
        Expanded(
            child: ref.watch(incidentProviderProvider).maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (incidents) {
                    return Column(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 120),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Total Incidents",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(incidents.length.toString(),
                                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Total Incidents",
                                          style: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(incidents.length.toString(),
                                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: ListView(
                              children: [
                                for (int i = 0; i < incidents.length; i++) ...[
                                  Material(
                                    elevation: 1,
                                    child: ListTile(
                                      onTap: () async {
                                        ref.read(selectedIncidentFormProvider.notifier).setSelected(incidents[i].id);
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const SizedBox(
                                                width: 800,
                                                child: IncidentFormWidget(),
                                              );
                                            });
                                      },
                                      title: Text("Incident ${incidents[i].date} ${incidents[i].time}"),
                                      trailing: IconButton(
                                          onPressed: () {
                                            ref.read(incidentProviderProvider.notifier).removeIncident(incidents[i]);
                                          },
                                          icon: const Icon(Icons.delete)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  )
                                ]
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )),
      ],
    );
  }
}

class IncidentFormWidget extends ConsumerStatefulWidget {
  const IncidentFormWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IncidentFormWidgetState();
}

class _IncidentFormWidgetState extends ConsumerState<IncidentFormWidget> {
  TextEditingController incidentTimeController = TextEditingController();
  TextEditingController incidentDateController = TextEditingController();
  TextEditingController incidentSuperintendentController = TextEditingController();
  TextEditingController incidentDescribeController = TextEditingController();
  TextEditingController incidentWitnessController = TextEditingController();
  TextEditingController incidentWitnessDescriptionController = TextEditingController();
  TextEditingController incidentForemanController = TextEditingController();
  TextEditingController incidentProjectController = TextEditingController();
  TextEditingController incidentAddressController = TextEditingController();
  List<TextEditingController> incidentInvolvedControllers = [];
  List<Widget> incidentInvolved = [];
  GlobalKey<FormState> formKey = GlobalKey();

  late IncidentForm incidentForm;

  @override
  void initState() {
    super.initState();
    incidentForm = IncidentForm.init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    IncidentForm selectedForm = ref.read(selectedIncidentFormProvider.notifier).selectedIncident;
    incidentTimeController = TextEditingController(text: selectedForm.time);
    incidentDateController = TextEditingController(text: selectedForm.date);
    incidentSuperintendentController = TextEditingController(text: selectedForm.superintendent);
    incidentDescribeController = TextEditingController(text: selectedForm.description);
    incidentWitnessController = TextEditingController(text: selectedForm.witness);
    incidentWitnessDescriptionController = TextEditingController(text: selectedForm.witnessDescription);
    incidentForemanController = TextEditingController(text: selectedForm.foreman);
    incidentProjectController = TextEditingController(text: selectedForm.project);
    incidentAddressController = TextEditingController(text: selectedForm.address);

    List<String> involved = ref.read(selectedIncidentFormProvider.notifier).selectedIncident.involved;
    for (int i = 0; i < involved.length; i++) {
      involvedFormAdd(involved[i], i);
    }
  }

  InputDecoration decoration({String hint = ""}) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      hintText: hint,
      hintStyle: const TextStyle(fontSize: 12),
      labelText: hint,
    );
  }

  void involvedFormAdd(String value, int i) {
    TextEditingController controller = TextEditingController(text: value);
    incidentInvolvedControllers.add(controller);
    incidentInvolved.add(
      TextFormField(
        controller: controller,
        decoration: decoration(hint: "Involved Name and Phone"),
        onSaved: (newValue) {
          if (newValue!.isNotEmpty) {
            List<String> listofinvolved = [...incidentForm.involved, newValue];
            incidentForm = incidentForm.copyWith(involved: listofinvolved);
          }
        },
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedIncidentForm = ref.watch(selectedIncidentFormProvider);
    return selectedIncidentForm.maybeWhen(
      orElse: () => const Center(
        child: CircularProgressIndicator(),
      ),
      updated: (incident) {
        return Material(
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 400,
                              height: 32,
                              child: TextFormField(
                                controller: incidentDateController,
                                decoration: decoration(hint: "Date of Incident"),
                                onSaved: (newValue) {
                                  incidentForm = incidentForm.copyWith(date: incidentDateController.text);
                                },
                                onTap: () async {
                                  DateTime? dateTime = await showDatePicker(
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now().subtract(
                                      const Duration(days: 30),
                                    ),
                                    lastDate: DateTime.now().add(
                                      const Duration(days: 30),
                                    ),
                                    context: context,
                                  );
                                  if (dateTime != null) {
                                    incidentDateController.text = dateTime.toString().split(" ")[0];
                                  }
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 400,
                              height: 32,
                              child: TextFormField(
                                controller: incidentTimeController,
                                decoration: decoration(hint: "Time of Incident"),
                                onSaved: (newValue) {
                                  incidentForm = incidentForm.copyWith(time: incidentTimeController.text);
                                },
                                onTap: () async {
                                  TimeOfDay? time = await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (time != null) {
                                    incidentTimeController.text = "${time.hour}:${time.minute}";
                                  }
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 400,
                              height: 32,
                              child: TextFormField(
                                controller: incidentSuperintendentController,
                                decoration: decoration(hint: "Superintendent"),
                                onSaved: (newValue) {
                                  if (newValue!.isNotEmpty) {
                                    incidentForm = incidentForm.copyWith(superintendent: incidentSuperintendentController.text);
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: Column(
                          children: [
                            for (int i = 0; i < incidentInvolved.length; i++) ...[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      SizedBox(height: 32, width: 200, child: incidentInvolved[i]),
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          incidentInvolvedControllers.removeAt(i);
                                          incidentInvolved.removeAt(i);
                                          setState(() {});
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            IconButton(
                              onPressed: () {
                                involvedFormAdd("", incidentInvolved.length);
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 32,
                        child: TextFormField(
                          controller: incidentForemanController,
                          decoration: decoration(hint: "Foreman & Phone"),
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(foreman: incidentForemanController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 32,
                        child: TextFormField(
                          controller: incidentProjectController,
                          decoration: decoration(hint: "Project Number & Name"),
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(project: incidentProjectController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 32,
                        child: TextFormField(
                          controller: incidentAddressController,
                          decoration: decoration(hint: "Address"),
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(superintendent: incidentAddressController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        child: TextFormField(
                          controller: incidentDescribeController,
                          decoration: decoration(hint: "Description"),
                          minLines: 5,
                          maxLines: null,
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(description: incidentDescribeController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 32,
                        child: TextFormField(
                          controller: incidentWitnessController,
                          decoration: decoration(hint: "Witness Name & Phone"),
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(witness: incidentWitnessController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        child: TextFormField(
                          controller: incidentWitnessDescriptionController,
                          decoration: decoration(hint: "Describe what you saw happened"),
                          minLines: 5,
                          maxLines: null,
                          onSaved: (newValue) {
                            if (newValue!.isNotEmpty) {
                              incidentForm = incidentForm.copyWith(witnessDescription: incidentWitnessDescriptionController.text);
                            }
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            formKey.currentState!.save();
                            ref.read(selectedIncidentFormProvider.notifier).editSelected(incident.id, incidentForm);
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
                          },
                          child: const Text("Save"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
                          },
                          child: const Text("Cancel"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// 1. Date: 2. Time: 3. Superintendent:
// 4. Foreman & phone:
// 5. Project Number & Name:
// 6. Address:
// 7. Names & phone numbers
// (of employees involved in the incident)
// 8. Did anyone go to clinic/hospital?
// 9. Did you take pictures & send them to safety?
// 10. Describe what happened:
// 11. Witness name & phone:
// 12. Describe what you saw happen:
