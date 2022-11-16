import 'package:flutter/material.dart';

class CountingButton extends StatelessWidget {
  final VoidCallback counting;
  final int iconName;
  const CountingButton(this.counting, this.iconName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: counting,
        icon: Icon(IconData(iconName, fontFamily: 'MaterialIcons',), color: Colors.blue,),
      ),
    );
  }
}
