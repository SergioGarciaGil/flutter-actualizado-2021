import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/pages/home_pages.dart';

import 'package:flutter_actualizacion2021/pages/pages_home_tabs/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPages extends StatefulWidget {
  @override
  _SplashPagesState createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> with AfterLayoutMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) {
      //muestra una nueva pagina y elimina del historial esplash cuan le de hacia atras

      this._checkLogin();
    });
  }

  _checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool wasLogin = prefs.getBool('wasLogin');
    print('wasLogin $wasLogin');
    if (wasLogin == null && wasLogin == false) {
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    } else {
      Navigator.pushReplacementNamed(context, HomePages.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CupertinoActivityIndicator(
        radius: 15,
      ),
    ));
  }
}
