import 'dart:math';

import 'package:exercicio2/screens/primeira.dart';
import 'package:exercicio2/screens/segunda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jankenpô',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Primeira(),
    );
  }
}
