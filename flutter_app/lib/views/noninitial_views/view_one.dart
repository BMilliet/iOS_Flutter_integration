import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewOne extends StatefulWidget {
  _ViewOneState createState() => _ViewOneState();
}

class _ViewOneState extends State<ViewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("View One"),
    );
  }

  Widget _body() {
    return Container(
        color: Colors.cyan,
        child: Center(
            child: Container(
          child: Text("Flutter view"),
        )));
  }
}
