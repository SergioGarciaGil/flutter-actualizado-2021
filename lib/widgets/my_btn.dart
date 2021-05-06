import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgrounColor, textColor;
  const MyBtn(
      {Key key,
      @required this.label,
      this.onPressed,
      this.backgrounColor,
      this.textColor})
      : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 30,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Text(
          this.label,
          style: TextStyle(
              color: this.textColor ?? Colors.black,
              fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: this.backgrounColor ?? Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
      ),
      onPressed: this.onPressed,
    );
  }
}
