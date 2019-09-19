import 'package:flutter/material.dart';

class ViewFour extends StatefulWidget {
  _ViewFourState createState() => _ViewFourState();
}

class _ViewFourState extends State<ViewFour> {
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
    return Column(
      children: <Widget>[_imagePicker(), Container(height: 15), _camera()],
    );
  }

  FlatButton _imagePicker() {
    return FlatButton(
      child: Text("image"),
      onPressed: () {},
    );
  }

  FlatButton _camera() {
    return FlatButton(
      child: Text("camera"),
      onPressed: () {},
    );
  }
}
