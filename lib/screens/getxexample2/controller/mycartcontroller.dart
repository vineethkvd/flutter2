import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  var book = 0.obs;
  var pen = 0.obs;
  var total = 0.obs; // Rename the variable to 'total'

  void bookIncrement() {
    book.value++;
    calculateTotal(); // Call the method to update the total when the book count changes
  }

  void bookDecrement(BuildContext context) {
    if (book.value <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Not possible to decrement book value")));
    } else {
      book.value--;
      calculateTotal(); // Call the method to update the total when the book count changes
    }
  }

  void penIncrement() {
    pen.value++;
    calculateTotal(); // Call the method to update the total when the pen count changes
  }

  void penDecrement(BuildContext context) {
    if (pen.value <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Not possible to decrement pen value")));
    } else {
      pen.value--;
      calculateTotal(); // Call the method to update the total when the pen count changes
    }
  }

  void calculateTotal() {
    total.value = book.value + pen.value;
  }
}
