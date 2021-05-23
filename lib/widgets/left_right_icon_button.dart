import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftRightIconButton extends StatelessWidget {
  final String leftIcon, rightIcon, label;

  final VoidCallback onPressed;
  final Widget rightContent;

  const LeftRightIconButton(
      {Key key,
      this.leftIcon,
      this.label = '',
      this.onPressed,
      this.rightContent,
      this.rightIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Row(
              children: [
                if (leftIcon != null)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(leftIcon, width: 30),
                  ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Expanded(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                )
              ],
            )),
            if (rightContent != null)
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: rightContent),
          ],
        ),
      ),
    );
  }
}
