import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_actualizacion2021/pages/post_pages.dart';
import 'package:flutter_actualizacion2021/widgets/avatar.dart';
//import 'package:flutter_actualizacion2021/widgets/cronometer.dart';
//import 'package:flutter_actualizacion2021/widgets/my_btn.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // bool _isEnabled = false;
  @override
  Widget build(BuildContext context) {
    print('Inicio');
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: LayoutBuilder(
          builder: (context, contraints) {
            return Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: contraints.maxHeight * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Avatar(
                            size: contraints.maxHeight * 0.25,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Bienvenido'),
                          Text(
                            'Sergio Garcia',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Container(
                            width: 120,
                            height: 120,
                            margin: EdgeInsets.all(5),
                            color: Colors.black12,
                          );
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Container(
                            width: 120,
                            height: 120,
                            margin: EdgeInsets.all(5),
                            color: Colors.black12,
                          );
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Container(
                            width: 120,
                            height: 120,
                            margin: EdgeInsets.all(5),
                            color: Colors.black12,
                          );
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // _isEnabled == true
                    //     ? Cronometer(
                    //         initTime: 90,
                    //         fontSize: 40,
                    //       )
                    //     : Container(),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // CupertinoButton(
                    // color: Colors.blue,
                    // child: Text('enabled: $_isEnabled'),
                    // onPressed: () {
                    //   setState(() {
                    //     _isEnabled = !_isEnabled;
                    //   });
                    // }),
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

                    // MyBtn(
                    //   label: 'My Post',
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, PostPages.routeName);
                    //   },
                    // )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
