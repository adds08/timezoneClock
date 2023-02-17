import 'package:LSTime/features/dailyreport/jha/application/jha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/application/selectedJha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/common_widgets/jhaform.widgets.dart';
import 'package:LSTime/features/dailyreport/jha/presentation/jhaform.screen.dart';
import 'package:LSTime/features/employeematrix/example.chart.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JHAScreen extends ConsumerWidget {
  const JHAScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jhaList = ref.watch(jHANotifierProvider);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text(
                          "Total JHA Reported",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          jhaList.length.toString(),
                          style: const TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
                LineChartSample5()
              ],
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 320,
                      child: UrbanJHATextFormField(
                        controller: TextEditingController(),
                        hintText: "Search JHA",
                        suffixIcon: const Icon(Icons.search),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    triggerMode: RefreshIndicatorTriggerMode.anywhere,
                    child: (jhaList.isNotEmpty)
                        ? ListView.builder(
                            itemCount: jhaList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 18),
                                child: Card(
                                  child: ListTile(
                                    title: Text(jhaList[index].date),
                                    subtitle: Text("Total steps ${jhaList[index].incidents.length.toString()}"),
                                    leading: Text("JHA #$index"),
                                    onTap: () {
                                      ref.read(selectedJHAProvider.notifier).select(jhaList[index]);
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const JHAFormScreen()));
                                    },
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(onPressed: () async {}, icon: const Icon(Icons.cloud_upload)),
                                        Badge(
                                          backgroundColor: Colors.amber.shade400,
                                          label: const Text("Draft"),
                                          largeSize: 28,
                                          padding: const EdgeInsets.symmetric(horizontal: 16),
                                          textStyle: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 18,
                                        ),
                                        IconButton(
                                            onPressed: () async {
                                              bool confirmed = await showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content: Padding(
                                                      padding: const EdgeInsets.all(16.0),
                                                      child: Text(
                                                        "Do you really want to delete JHA #$index ?",
                                                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                                      ),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).pop(false);
                                                          },
                                                          child: const Text("No")),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(context).pop(true);
                                                          },
                                                          child: const Text("Yes"))
                                                    ],
                                                  );
                                                },
                                              );
                                              if (confirmed) {
                                                ref.read(jHANotifierProvider.notifier).delete(jhaList[index].id);
                                              }
                                            },
                                            icon: const Icon(Icons.delete)),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : ListView(
                            children: const [
                              Center(
                                child: Text("No Job Hazard Reports"),
                              ),
                            ],
                          ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: ElevatedButton(
                      onPressed: () {
                        ref.read(selectedJHAProvider.notifier).create();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JHAFormScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.add),
                          Text("Add Job Hazard Report"),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
