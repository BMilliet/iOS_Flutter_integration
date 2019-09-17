import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitialFourthView extends StatefulWidget {
  _InitialFourthViewState createState() => _InitialFourthViewState();
}

class _InitialFourthViewState extends State<InitialFourthView> {
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
          child: Text("Flutter view 1 in iOS tabbar"),
        )));
  }
}
