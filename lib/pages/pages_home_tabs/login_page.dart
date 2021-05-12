import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_actualizacion2021/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  static final routeName = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Example@domain.com', labelText: 'E-mail'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '*********', labelText: 'Passsword'),
                      keyboardType: TextInputType.emailAddress,
                      keyboardAppearance: Brightness.dark,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyBtn(
                      fullWidth: true,
                      label: 'INGRESAR',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
