// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:rive/rive.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MainApp(),
//   ));
// }

// class DeltaFromUTC {
//   String location;
//   Duration duration;
//   DeltaFromUTC({
//     required this.location,
//     required this.duration,
//   });
// }

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   Widget currentScreen = WatchScreen();
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           bottomNavigationBar: BottomAppBar(
//             child: BottomNavigationBar(
//               onTap: (value) {
//                 currentIndex = value;
//                 if (value == 0) {
//                   setState(() {
//                     currentScreen = WatchScreen();
//                   });
//                 } else if (value == 1) {
//                   setState(() {
//                     currentScreen = TreeScreen();
//                   });
//                 } else {
//                   setState(() {
//                     currentScreen = AnimatedSwitch();
//                   });
//                 }
//               },
//               items: const [
//                 BottomNavigationBarItem(
//                   label: "Watch",
//                   icon: Icon(Icons.watch),
//                 ),
//                 BottomNavigationBarItem(label: "Tree", icon: Icon(Icons.nature)),
//                 BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home))
//               ],
//               currentIndex: currentIndex,
//             ),
//           ),
//           body: currentScreen),
//     );
//   }
// }

// class AnimatedSwitch extends StatefulWidget {
//   const AnimatedSwitch({super.key});

//   @override
//   State<AnimatedSwitch> createState() => _AnimatedSwitchState();
// }

// class _AnimatedSwitchState extends State<AnimatedSwitch> {
//   late RiveAnimationController controller;
//   SMIBool? _bump;
//   @override
//   void initState() {
//     super.initState();
//   }

//   initSwitcher(artboard) {
//     final controller = StateMachineController.fromArtboard(artboard, 'toggle switch');
//     artboard.addController(controller!);
//     _bump = controller.findInput<bool>('pressed') as SMIBool;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _bump!.value = !_bump!.value;
//       },
//       child: SizedBox(
//         width: 300,
//         height: 300,
//         child: RiveAnimation.asset(
//           "assets/rive/switcher.riv",
//           onInit: initSwitcher,
//         ),
//       ),
//     );
//   }
// }

// class WatchScreen extends StatelessWidget {
//   WatchScreen({super.key});

//   final List<DeltaFromUTC> deltaFromUTC = [
//     DeltaFromUTC(location: "Dallas", duration: -const Duration(hours: 6)),
//     DeltaFromUTC(location: "Kathmandu", duration: const Duration(hours: 5, minutes: 45)),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: deltaFromUTC
//           .map((e) => TimeCard(
//                 name: e.location,
//                 duration: e.duration,
//               ))
//           .toList(),
//     );
//   }
// }

// class TimeCard extends StatefulWidget {
//   final Duration duration;
//   final String name;
//   const TimeCard({super.key, required this.name, required this.duration});

//   @override
//   State<TimeCard> createState() => _TimeCardState();
// }

// class _TimeCardState extends State<TimeCard> {
//   DateTime nowDateTime = DateTime.now().toUtc();
//   DateFormat dateFormat = DateFormat("y MMMM d");
//   DateFormat dayFormat = DateFormat("EEEE");
//   DateFormat timeFormat = DateFormat("HH:mm:ss");

//   Timer timer = Timer.periodic(Duration.zero, (timer) {});

//   @override
//   void initState() {
//     super.initState();
//     updateTime();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     timer.cancel();
//   }

//   void updateTime() {
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         nowDateTime = DateTime.now().toUtc().add(widget.duration);
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(12),
//       child: Padding(
//         padding: const EdgeInsets.all(32),
//         child: Row(
//           children: [
//             Expanded(
//                 child: Text(
//               widget.name,
//               style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//             )),
//             Expanded(
//                 child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   timeFormat.format(nowDateTime),
//                   style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
//                 ),
//                 Text(
//                   dateFormat.format(nowDateTime),
//                   style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//                 ),
//                 Text(
//                   dayFormat.format(nowDateTime),
//                   style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//                 )
//               ],
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TreeScreen extends StatefulWidget {
//   const TreeScreen({super.key});

//   @override
//   State<TreeScreen> createState() => _TreeScreenState();
// }

// class _TreeScreenState extends State<TreeScreen> {
//   double slidervalue = 0;
//   StateMachineController? controller;

//   SMIInput<double>? input;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     controller = null;
//   }

// // #4d4c61
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0XFF4d4c61),
//       child: Stack(
//         children: [
//           RiveAnimation.asset(
//             "assets/rive/tree.riv",
//             stateMachines: const ["State Machine 1"],
//             onInit: (art) {
//               controller = StateMachineController.fromArtboard(art, "State Machine 1");
//               art.addController(controller!);
//               input = controller!.findInput<double>('input') as SMIInput<double>;
//             },
//           ),
//           Positioned(
//               height: 200,
//               bottom: 150,
//               left: 200,
//               child: Transform.rotate(
//                 angle: -pi / 2,
//                 child: SizedBox(
//                   height: 100,
//                   child: Slider(
//                       value: slidervalue,
//                       onChanged: (change) {
//                         setState(() {
//                           slidervalue = change;
//                         });
//                         input!.value = slidervalue * 100;
//                       }),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }
