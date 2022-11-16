import 'package:flutter/material.dart';

import './icon_button.dart';
import './value_box.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var value = 0;
  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      value != 0 ? value-- : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Our Unique Counter"),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountingButton(decrement, 0xe516),
              ValueBox(value),
              CountingButton(increment, 0xe047)
            ],
          )),
    );
  }
}
