import 'package:flutter/material.dart';
import 'package:flutter2/screens/getx/view/home_page.dart';
import 'package:flutter2/screens/getxexample2/my_cart.dart';
import 'package:flutter2/screens/withoutgetx/withoutgetx.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WithoutGetX(),
    );
    // return const GetMaterialApp(
    //   title: 'Flutter Demo',
    //   home: MyCart(),
    // );
  }
}
