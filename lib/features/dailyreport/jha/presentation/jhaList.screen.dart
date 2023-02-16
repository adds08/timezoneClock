import 'package:LSTime/features/dailyreport/jha/application/jha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/application/selectedJha.provider.dart';
import 'package:LSTime/features/dailyreport/jha/model/jha.model.dart';
import 'package:LSTime/features/dailyreport/jha/presentation/jhaform.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JHAScreen extends ConsumerWidget {
  const JHAScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jhaList = ref.watch(jHANotifierProvider);
    return Column(
      children: [
        SizedBox(
          height: 42,
          child: MaterialButton(
              onPressed: () {
                ref.read(selectedJHAProvider.notifier).create();
                Navigator.push(context, MaterialPageRoute(builder: (context) => const JHAFormScreen()));
              },
              child: const Text("Add Todo")),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: jhaList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(jhaList[index].date),
              leading: Text(jhaList[index].incidents.length.toString()),
              onTap: () {
                ref.read(selectedJHAProvider.notifier).select(jhaList[index]);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const JHAFormScreen()));
              },
              trailing: IconButton(
                  onPressed: () {
                    ref.read(jHANotifierProvider.notifier).delete(jhaList[index].id);
                  },
                  icon: const Icon(Icons.delete)),
            );
          },
        ))
      ],
    );
  }
}
