import 'package:flutter/material.dart';

class WithoutGetX extends StatefulWidget {
  const WithoutGetX({Key? key}) : super(key: key);

  @override
  State<WithoutGetX> createState() => _WithoutGetXState();
}

class _WithoutGetXState extends State<WithoutGetX> {
  var penCount = 0;
  var bookCount = 0;
  int? total;

  void incPen() {
    setState(() {
      penCount++;
    });
  }

  void incBook() {
    setState(() {
      bookCount++;
    });
  }

  void decBook() {
    setState(() {
      if (bookCount <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Not possible to decrement the value")));
      } else {
        bookCount--;
      }
    });
  }

  void decPen() {
    setState(() {
      if (penCount <= 0) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Not possible to decrement the value")));
      } else {
        penCount--;
      }
    });
  }

  void getTotal() {
    setState(() {
      total = penCount + bookCount;
    });
  }

  @override
  void initState() {
    super.initState();
    total = 0; // Initialize total to 0 in initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("book"),
                ElevatedButton(onPressed: () => incBook(), child: Text("+")),
                Text("Result : $bookCount"),
                ElevatedButton(onPressed: () => decBook(), child: Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Pen"),
                ElevatedButton(onPressed: () => incPen(), child: Text("+")),
                Text("Result : $penCount"),
                ElevatedButton(onPressed: () => decPen(), child: Text("-")),
              ],
            ),
            ElevatedButton(onPressed: () => getTotal(), child: Text("Total")),
            Text("Total : ${total ?? 0}"), // Use the null-aware operator to handle null total
          ],
        ),
      ),
    );
  }
}
