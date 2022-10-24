import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  // CustomButtonWidget({});
  String msg;
  Color color;
  VoidCallback handelpress;
  CustomButtonWidget({
    required this.msg,
    required this.handelpress,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 100,
      constraints: BoxConstraints(minHeight: 50),
      textStyle: TextStyle(fontSize: 30, color: color),
      splashColor: color,
      child: Text(msg),
      onPressed: handelpress,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: color, width: 3)),
    );
  }
}
