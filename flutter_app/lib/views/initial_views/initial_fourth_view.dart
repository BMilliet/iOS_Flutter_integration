import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routes/named_routes.dart';

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
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 100),
              child: Text("Flutter view 1 in iOS tabbar"),
            ),
            RaisedButton(
              child: Text("Next flutter view in tabbar"),
              onPressed: () {
                Navigator.pushNamed(context, NamedRoutes.viewOne);
              },
            )
          ],
        )));
  }
}
