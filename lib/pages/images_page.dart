import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/widgets/my_appbar.dart';

class ImagesPages extends StatefulWidget {
  static final String routeName = 'images';
  ImagesPages({Key key}) : super(key: key);

  @override
  _ImagesPagesState createState() => _ImagesPagesState();
}

class _ImagesPagesState extends State<ImagesPages> {
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
                  onRightClick: () => Navigator.pop(context),
                  onleftClick: () => Navigator.pop(context)),
              Expanded(
                //gridView. builder se usa para grandes elementos:

                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (_, index) {
                    return Container(
                      color: Colors.black12,
                      alignment: Alignment.center,
                      child: Text('${index + 1}'),
                    );
                  },
                  itemCount: 100,
                ),

                // GidView.count lo utizamos para pequeños proyectos
                // child: GridView.count(
                //   crossAxisCount: 5,
                //   crossAxisSpacing: 10,
                //   mainAxisSpacing: 10,
                //   children: List.generate(50, (index) {
                //     return Container(
                //       color: Colors.black12,
                //       alignment: Alignment.center,
                //       child: Text('${index + 1}'),
                //     );
                //   }),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
