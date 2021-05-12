import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/chat_pages.dart';
import 'package:flutter_actualizacion2021/pages/home_pages.dart';
import 'package:flutter_actualizacion2021/pages/images_page.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/login_page.dart';

import 'package:flutter_actualizacion2021/pages/post_pages.dart';
import 'package:flutter_actualizacion2021/pages/splash_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (focus.hasPrimaryFocus) {
            focus.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashPages(),
          routes: {
            HomePages.routeName: (BuildContext _) => HomePages(),
            ImagesPages.routeName: (BuildContext _) => ImagesPages(),
            PostPages.routeName: (BuildContext _) => PostPages(),
            ChatPages.routeName: (BuildContext _) => ChatPages(),
            LoginPage.routeName: (_) => LoginPage(),
          },
        ));
  }
}
