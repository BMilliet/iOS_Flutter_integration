import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';

class InitialFifthView extends StatefulWidget {
  _InitialFifthViewState createState() => _InitialFifthViewState();
}

class _InitialFifthViewState extends State<InitialFifthView> {
  Channel _channel = Channel();

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
                _channel.openFlutterView();
              },
            ),
            Container(height: 20),
            RaisedButton(
              child: Text("Next iOS view"),
              onPressed: () {
                _channel.openiOSView();
              },
            )
          ],
        )));
  }
}
