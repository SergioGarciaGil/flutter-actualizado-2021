import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_actualizacion2021/widgets/my_btn.dart';

class LoginPage extends StatefulWidget {
  static final routeName = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusNodePassword = FocusNode();

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _focusNodePassword.dispose();
    super.dispose();
  }

  _submit() {
    final bool isValid = _formKey.currentState.validate();
    if (isValid) {}
  }

  String _validateEmail(String email) {
    if (email.isNotEmpty && email.contains('@')) {
      return null;
    }
    return 'invalid email';
  }

  String _validatePassword(String password) {
    if (password.isNotEmpty && password.length > 4) {
      return null;
    }
    return 'invalid passworld';
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final EdgeInsets padding = media.padding;

    final Size size = media.size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
              child: Container(
            height: size.height - padding.top - padding.bottom,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 20),
                      child: Image.network(
                          'https://placeholder.com/wp-content/uploads/2018/10/placeholder.com-logo4.jpg',
                          width: 280),
                    ),
                    Text(
                      'Flutter UI & UX',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 330, minWidth: 200),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Example@domain.com',
                              labelText: 'E-mail',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          keyboardType: TextInputType.emailAddress,
                          keyboardAppearance: Brightness.light,
                          textInputAction: TextInputAction.next,
                          validator: _validateEmail,
                          onFieldSubmitted: (String text) {
                            _focusNodePassword.nextFocus();
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: '*********',
                              labelText: 'Passsword',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          obscureText: true,
                          focusNode: _focusNodePassword,
                          keyboardAppearance: Brightness.light,
                          textInputAction: TextInputAction.send,
                          validator: _validatePassword,
                          onFieldSubmitted: (String text) {
                            _submit();
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CupertinoButton(
                              child: Text('Recuperar contraseña'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MyBtn(
                          fullWidth: true,
                          label: 'INGRESAR',
                          onPressed: _submit,
                          backgrounColor: Color(0xff304FFE),
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 30),
                        Text('O inicia con'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: MyBtn(
                                fullWidth: true,
                                label: 'FACEBOOK',
                                onPressed: () {},
                                backgrounColor: Color(0xffF50057),
                                textColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 18),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: MyBtn(
                                fullWidth: true,
                                label: 'GOOGLE',
                                onPressed: () {},
                                backgrounColor: Color(0xff0D47A1),
                                textColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
