import 'package:flutter/material.dart';

class ValueBox extends StatelessWidget {
  final int value;
  ValueBox(this.value);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(
            child: Text(value.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold))),
        width: double.tryParse('50'),
        height: double.tryParse('50'),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
