import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/pages/post_pages.dart';
import 'package:flutter_actualizacion2021/widgets/avatar.dart';
import 'package:flutter_actualizacion2021/widgets/cronometer.dart';
import 'package:flutter_actualizacion2021/widgets/my_btn.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool _isEnabled = false;
  @override
  Widget build(BuildContext context) {
    print('Inicio');
    return Column(
      children: [
        Avatar(),
        SizedBox(
          height: 20,
        ),
        Text('Bienvenido'),
        Text(
          'Sergio Garcia',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        _isEnabled == true
            ? Cronometer(
                initTime: 90,
                fontSize: 40,
              )
            : Container(),
        SizedBox(
          height: 30,
        ),
        CupertinoButton(
            color: Colors.blue,
            child: Text('enabled: $_isEnabled'),
            onPressed: () {
              setState(() {
                _isEnabled = !_isEnabled;
              });
            }),
        // SizedBox(
        //   height: 10,
        // ),
        // CupertinoButton(
        //   color: Colors.green,
        //   child: Text('GO to chat'),
        //   onPressed: () {
        //     final route = MaterialPageRoute(
        //         builder: (BuildContext _) => ChatPages());
        //     Navigator.push(context, route);
        //   },
        // )

        MyBtn(
          label: 'My Post',
          onPressed: () {
            Navigator.pushNamed(context, PostPages.routeName);
          },
        )
      ],
    );
  }
}
