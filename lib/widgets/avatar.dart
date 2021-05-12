import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_actualizacion2021/widgets/cilcle_container.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  final size;

  const Avatar({Key key, this.size = 150}) : super(key: key);
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File _file;

  _pickImage() async {
    //final File file = await ImagePicker. (source: ImageSource.gallery);

    //
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      child: Stack(
        children: [
          _file == null
              ? SvgPicture.asset('assets/icons/user1.svg')
              : Image.file(_file),
          Positioned(
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 30,
              onPressed: () {
                _pickImage();
              },
              child: CircleContainer(
                child: Icon(Icons.edit),
                size: 60,
              ),
            ),
            right: 10,
          ),
        ],
      ),
    );
  }
}
