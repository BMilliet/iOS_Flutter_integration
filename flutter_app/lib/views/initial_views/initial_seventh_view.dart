import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';

class InitialSeventhView extends StatefulWidget {
  _InitialSeventhViewState createState() => _InitialSeventhViewState();
}

class _InitialSeventhViewState extends State<InitialSeventhView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Initial Seventh View"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Channel().popFlutterView();
        },
      ),
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
              child: Text("Flutter view using plugins"),
            ),
            RaisedButton(
              child: Text("open webview"),
              onPressed: () {
                //
              },
            ),
            Container(height: 20),
            RaisedButton(
              child: Text("open camera"),
              onPressed: () {
                //
              },
            )
          ],
        )));
  }
}
