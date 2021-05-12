import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/widgets/my_appbar.dart';

class ChatPages extends StatefulWidget {
  static final String routeName = 'chatPages';
  ChatPages({Key key}) : super(key: key);

  @override
  _ChatPagesState createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            MyAppBar(
              leftIcons: 'assets/icons/flecha-izquierda.svg',
              rightIcons: 'assets/icons/mensajes.svg',
              onleftClick: () => Navigator.pop(context),
            ),
            Center(
              child: Text('Chat PAGES'),
            )
          ],
        ),
      )),
    );
  }
}
