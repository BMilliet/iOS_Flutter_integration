import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';
import 'package:flutter_app/routes/named_routes.dart';

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
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 100),
              child: Text("Flutter view 2 in iOS tabbar"),
            ),
            RaisedButton(
              child: Text("Next flutter view"),
              onPressed: () {
                Channel().openFlutterView();
              },
            ),
            Container(height: 20),
            RaisedButton(
              child: Text("Next iOS view"),
              onPressed: () {
                Channel().openiOSView();
              },
            )
          ],
        )));
  }
}
