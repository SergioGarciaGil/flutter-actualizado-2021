import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  final String leftIcons, rightIcons;
  final VoidCallback onleftClick, onRightClick;

  const MyAppBar(
      {Key key,
      @required this.leftIcons,
      @required this.rightIcons,
      this.onleftClick,
      this.onRightClick})
      : super(key: key);
  //'assets/icons/user.svg',
  //'assets/icons/mensajes.svg',

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Color(0xffeeeeee),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
              padding: EdgeInsets.all(15),
              child: SvgPicture.asset(
                leftIcons,
                width: 50,
              ),
              onPressed: onleftClick),
          Text(
            'LOGO',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      rightIcons,
                      width: 30,
                    ),
                  ),
                  Positioned(
                      right: 12,
                      top: 12,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ))
                ],
              ),
              onPressed: onRightClick),
        ],
      ),
    );
  }
}
