import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool fullWidth;
  final EdgeInsets padding;

  final Color backgrounColor, textColor;
  const MyBtn(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.backgrounColor,
      this.textColor,
      this.fullWidth = false,
      this.padding})
      : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 30,
      padding: EdgeInsets.zero,
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding:
            this.padding ?? EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: Text(
          this.label,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: this.textColor ?? Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: this.backgrounColor ?? Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 10, offset: Offset(0, 5))
            ]),
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        this.onPressed();
      },
    );
  }
}
