import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/widgets/cilcle_container.dart';
import 'package:after_layout/after_layout.dart';

class Cronometer extends StatefulWidget {
  final double initTime, fontSize;

  const Cronometer({Key key, this.initTime = 0, this.fontSize})
      : super(key: key);
  @override
  CronometerState createState() => CronometerState();
}

class CronometerState extends State<Cronometer> with AfterLayoutMixin {
  double _time;
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('afterFirstLayout'),
          );
        });
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      setState(() {
        _time += 1;
      });
    });
  }

  void _stop() {
    _timer.cancel();
  }

  @override
  void dispose() {
    super.dispose();
    _stop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            _time.toString(),
            style: TextStyle(fontSize: widget.fontSize),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                  child:
                      CircleContainer(child: Icon(Icons.play_arrow), size: 55),
                  onPressed: _start),
              CupertinoButton(
                  child: CircleContainer(child: Icon(Icons.stop), size: 55),
                  onPressed: _stop),
            ],
          )
        ],
      ),
    );
  }
}
