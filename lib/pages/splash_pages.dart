import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/pages/home_pages.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/login_page.dart';

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
      Navigator.pushNamed(context, 'home');

      //muestra una nueva pagina y elimina del historial esplash cuan le de hacia atras
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    });
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
