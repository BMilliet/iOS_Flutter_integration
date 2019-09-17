import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitialFifthView extends StatefulWidget {
  _InitialFifthViewState createState() => _InitialFifthViewState();
}

class _InitialFifthViewState extends State<InitialFifthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Flutter view"),
    );
  }

  Widget _body() {
    return Container(
        color: Colors.cyan,
        child: Center(
            child: Container(
          child: Text("Flutter view 2 in iOS tabbar"),
        )));
  }
}
