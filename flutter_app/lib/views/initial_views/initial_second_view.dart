import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitialSecondView extends StatefulWidget {
  _InitialSecondViewState createState() => _InitialSecondViewState();
}

class _InitialSecondViewState extends State<InitialSecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Initial Second View"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
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
