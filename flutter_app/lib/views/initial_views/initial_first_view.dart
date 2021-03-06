import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';
import 'package:flutter_app/routes/named_routes.dart';

class InitialFirstView extends StatefulWidget {
  _InitialFirstViewState createState() => _InitialFirstViewState();
}

class _InitialFirstViewState extends State<InitialFirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Initial First View"),
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
              child: Text("Flutter view"),
            ),
            RaisedButton(
              child: Text("Next flutter view"),
              onPressed: () {
                Navigator.pushNamed(context, NamedRoutes.viewOne);
              },
            )
          ],
        )));
  }
}
