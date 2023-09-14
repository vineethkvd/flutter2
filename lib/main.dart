import 'package:flutter/material.dart';
import 'package:flutter2/screens/gestures/gesturessample.dart';


import 'form/SnackBar/snakbarsample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GesturesSample());
  }
}
