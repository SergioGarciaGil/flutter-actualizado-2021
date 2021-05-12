import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool fullWidth;

  final Color backgrounColor, textColor;
  const MyBtn(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.backgrounColor,
      this.textColor,
      this.fullWidth = false})
      : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 30,
      padding: EdgeInsets.zero,
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Text(
          this.label,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: this.textColor ?? Colors.black,
              fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: this.backgrounColor ?? Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        this.onPressed();
      },
    );
  }
}
