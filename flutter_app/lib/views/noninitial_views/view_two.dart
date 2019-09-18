import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';

class ViewTwo extends StatefulWidget {
  _ViewTwoState createState() => _ViewTwoState();
}

class _ViewTwoState extends State<ViewTwo> {
  final _channel = Channel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("View Two"),
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
              child: Text("Flutter view"),
            ),
            RaisedButton(
              child: Text("Go to another iOS"),
              onPressed: () {
                _channel.popFlutterView(animated: false);
                _channel.openiOSView();
              },
            )
          ],
        )));
  }
}
