import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/chat_pages.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/history_tab.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/home_tab.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/more_tab.dart';
import 'package:flutter_actualizacion2021/pages/pages_home_tabs/ofert_tab.dart';
import 'package:flutter_actualizacion2021/widgets/botton_menu.dart';
import 'package:flutter_actualizacion2021/widgets/my_appbar.dart';

class HomePages extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _currentPage = 0;

  final _menu = [
    BottonMenuItem(
        iconPath: 'assets/icons/home.svg', label: 'Inicio', content: HomeTab()),
    BottonMenuItem(
        iconPath: 'assets/icons/history.svg',
        label: 'Historial',
        content: HistryTab()),
    BottonMenuItem(
        iconPath: 'assets/icons/precio.svg',
        label: 'Ofertas',
        content: OfertTab()),
    BottonMenuItem(
        iconPath: 'assets/icons/menu.svg', label: 'Mas', content: MoreTab()),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottonMenu(
        currentPage: _currentPage,
        // ignore: missing_return
        onChanged: (int newCurrentPage) {
          setState(() {
            _currentPage = newCurrentPage;
          });
        },
        items: _menu,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              MyAppBar(
                leftIcons: 'assets/icons/user.svg',
                rightIcons: 'assets/icons/mensajes.svg',
                onleftClick: () {
                  Navigator.pushNamed(context, 'images');
                },
                onRightClick: () {
                  Navigator.pushNamed(context, ChatPages.routeName);
                },
              ),
              Expanded(
                  child: IndexedStack(
                children: _menu.map<Widget>((item) => item.content).toList(),
                index: _currentPage,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
