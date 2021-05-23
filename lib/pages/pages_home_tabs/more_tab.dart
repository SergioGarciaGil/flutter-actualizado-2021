import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/login_page.dart';
import 'package:flutter_actualizacion2021/utils/dialogos.dart';
import 'package:flutter_actualizacion2021/widgets/avatar.dart';
import 'package:flutter_actualizacion2021/widgets/left_right_icon_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shared_preferences/shared_preferences.dart';

class MoreTab extends StatefulWidget {
  MoreTab({Key key}) : super(key: key);

  @override
  _MoreTabState createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushNamedAndRemoveUntil(
        context, LoginPage.routeName, (_) => false);
  }

  _confirm() {
    Dialogs.showMaterialDialog(context,
        body: 'Esta seguro que desea salir de la aplicación?',
        onConfirm: _logOut);
  }

  @override
  Widget build(BuildContext context) {
    print('Mas');
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xfff8f8f8),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Avatar(
                    size: 150.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Bienvenido'),
                  Text(
                    'Sergio Garcia',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Column(
                children: [
                  LeftRightIconButton(
                    leftIcon: 'assets/icons/seguridad.svg',
                    rightContent: SvgPicture.asset(
                      'assets/icons/flecha-derecha.svg',
                      width: 25,
                    ),
                    label: 'Configuración de seguridad',
                    onPressed: _confirm,
                  ),
                  LeftRightIconButton(
                    leftIcon: 'assets/icons/campana.svg',
                    rightContent: Text('ACTIVADO'),
                    label: 'Notificaciones push',
                    onPressed: _confirm,
                  ),
                  LeftRightIconButton(
                    leftIcon: 'assets/icons/logout.svg',
                    label: 'Cerrar Sesión',
                    onPressed: _confirm,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
