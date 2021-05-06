import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonMenuItem {
  final String iconPath, label;
  final Widget content;

  BottonMenuItem(
      {@required this.content, @required this.iconPath, @required this.label});
}

class BottonMenu extends StatelessWidget {
  final List<BottonMenuItem> items;
  final int currentPage;
  final Void Function(int) onChanged;

  const BottonMenu(
      {Key key,
      @required this.items,
      @required this.currentPage,
      this.onChanged})
      : assert(items != null && items.length > 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (index) {
              final bool _isActive = index == currentPage;
              final BottonMenuItem item = items[index];
              return Expanded(
                  child: Container(
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        item.iconPath,
                        width: 35,
                        color: _isActive ? Colors.blue : Colors.black,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        item.label,
                        style: TextStyle(
                            fontSize: 12,
                            color: _isActive ? Colors.blue : Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () {
                    onChanged(index);
                  },
                ),
              ));
            })),
      ),
    );
  }
}
