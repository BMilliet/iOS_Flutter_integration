import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ViewFour extends StatefulWidget {
  _ViewFourState createState() => _ViewFourState();
}

class _ViewFourState extends State<ViewFour> {
  File _photo;
  Future _getPhoto(bool isCamera) async {
    File photo;
    if (isCamera) {
      photo = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      photo = await ImagePicker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      _photo = photo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("View Four"),
    );
  }

  Widget _body() {
    return Container(
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
            _imagePicker(),
            Container(height: 10),
            _camera(),
            _photoContainer()
          ],
        ));
  }

  RaisedButton _imagePicker() {
    return RaisedButton(
      child: Text("image"),
      onPressed: () {
        _getPhoto(false);
      },
    );
  }

  RaisedButton _camera() {
    return RaisedButton(
      child: Text("camera"),
      onPressed: () {
        _getPhoto(true);
      },
    );
  }

  Widget _photoContainer() {
    if (_photo == null) {
      return Container();
    }
    return Image.file(_photo, height: 250, width: 120);
  }
}
