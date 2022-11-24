import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class DeltaFromUTC {
  String location;
  Duration duration;
  DeltaFromUTC({
    required this.location,
    required this.duration,
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<DeltaFromUTC> deltaFromUTC = [
      DeltaFromUTC(location: "Dallas", duration: -const Duration(hours: 6)),
      DeltaFromUTC(location: "Kathmandu", duration: const Duration(hours: 5, minutes: 45)),
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: deltaFromUTC.map((e) => TimeCard(name: e.location, duration: e.duration)).toList(),
        ),
      ),
    );
  }
}

class TimeCard extends StatefulWidget {
  final Duration duration;
  final String name;
  const TimeCard({super.key, required this.name, required this.duration});

  @override
  State<TimeCard> createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  DateTime nowDateTime = DateTime.now().toUtc();
  DateFormat dateFormat = DateFormat("y MMMM d");
  DateFormat dayFormat = DateFormat("EEEE");
  DateFormat timeFormat = DateFormat("HH:mm:ss");

  Timer timer = Timer.periodic(Duration.zero, (timer) {});

  @override
  void initState() {
    super.initState();
    updateTime();
  }

  void updateTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        nowDateTime = DateTime.now().toUtc().add(widget.duration);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
                child: Text(
              widget.name,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  timeFormat.format(nowDateTime),
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  dateFormat.format(nowDateTime),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  dayFormat.format(nowDateTime),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
