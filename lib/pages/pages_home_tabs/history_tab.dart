import 'package:flutter/material.dart';

class HistryTab extends StatefulWidget {
  HistryTab({Key key}) : super(key: key);

  @override
  _HistryTabState createState() => _HistryTabState();
}

class _HistryTabState extends State<HistryTab> {
  @override
  Widget build(BuildContext context) {
    print('Historial');
    return Center(
      child: Text('Historial'),
    );
  }
}
