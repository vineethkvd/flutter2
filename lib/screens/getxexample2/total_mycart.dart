import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/mycartcontroller.dart';

class TotalMycart extends StatefulWidget {
  const TotalMycart({super.key});

  @override
  State<TotalMycart> createState() => _TotalMycartState();
}

class _TotalMycartState extends State<TotalMycart> {
  final MyCartController controller = Get.put(MyCartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Total MyCart"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => Text("Total Items: ${controller.total}",style:TextStyle(fontSize: 30),)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Back to cart"))
        ]),
      ),
    );
  }
}
