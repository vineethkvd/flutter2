import 'package:flutter/material.dart';
import 'package:flutter2/screens/getxexample2/total_mycart.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/mycartcontroller.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final count = 0;
  @override
  Widget build(BuildContext context) {
    final MyCartController controller = Get.put(MyCartController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Books"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          controller.bookIncrement();
                        },
                        child: const Text("+")),
                  ),
                  Obx(() => Text(
                        style: const TextStyle(fontSize: 18),
                        '${controller.book.value}',
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          controller.bookDecrement(context);
                        },
                        child: const Text("-")),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Pen"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          controller.penIncrement();
                        },
                        child: const Text("+")),
                  ),
                  Obx(() => Text(
                        style: const TextStyle(fontSize: 18),
                        '${controller.pen.value}',
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          controller.penDecrement(context);
                        },
                        child: const Text("-")),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const TotalMycart();
                      },
                    ));
                  },
                  child: Text("Goto total Cart"))
            ]),
      ),
    );
  }
}
