import 'package:LSTime/features/login/login.screen.dart';
import 'package:LSTime/home1.dart';
import 'package:LSTime/home2.dart';
import 'package:LSTime/home3.dart';
import 'package:LSTime/home4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(List<String> args) {
  runApp(const UrbanApp());
}

class UrbanApp extends StatelessWidget {
  const UrbanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => UrbanLoginScreen(),
        '/home1': (context) => UrbanHomeScreen1(),
        '/home2': (context) => UrbanHomeScreen2(),
        '/home3': (context) => UrbanHomeScreen3(),
        '/home4': (context) => UrbanHomeScreen4(),
      },
    ));
  }
}
