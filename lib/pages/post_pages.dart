import 'package:flutter/material.dart';
//import 'package:flutter_actualizacion2021/utils/face_list.dart';
import 'package:flutter_actualizacion2021/widgets/my_appbar.dart';

class PostPages extends StatefulWidget {
  static final String routeName = 'posts';
  PostPages({Key key}) : super(key: key);

  @override
  _PostPagesState createState() => _PostPagesState();
}

class _PostPagesState extends State<PostPages> {
  List<String> _data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                onRightClick: () {
                  setState(() {
                    _data.add('item ${_data.length}');
                  });

                  // otro caso es si agregamos a la lista vacia para que no nos genere error
                  // se debe aplicar condicional: o de esta forma
                  // setState(() {
                  //   _data.insert(_data.length - 1 > 0 ? _data.length - 1 : 0,
                  //       'Item befores ${DateTime.august}');
                  // });
                },
              ),
              Expanded(
                  //     child: ListView(
                  //   children: List.generate(fakeList.length, (index) {
                  //     final String item = fakeList[index];
                  //     return Text(item);
                  //   }),
                  // ))
                  //otra forma de imprimir una lista con map
                  //     child: ListView(
                  //   children: fakeList.map<Widget>((String item) {
                  //     return Text(item);
                  //   }).toList(),
                  // ))
                  // cuando la lista es muy extensa o muy grande se recomienda LISVIEW.BUILDER

                  child: ListView.builder(
                itemBuilder: (BuildContext contex, int position) {
                  final String item = _data[position];
                  return ListTile(
                    title: Text(item),
                    onTap: () {},
                    onLongPress: () {
                      setState(() {
                        _data.removeAt(position);
                      });

                      // setState(() {
                      //   _data.insert(
                      //       _data.length - 1, 'Item before ${DateTime.april}');
                      // });
                      //
                    },
                    subtitle: Text(DateTime.now().toString()),
                    leading: Icon(Icons.watch),
                  );
                },
                itemCount: _data.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
