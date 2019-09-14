import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          SystemNavigator.pop();
        },
      ),
    );
  }

  Widget _body() {
    return Container(color: Colors.cyan);
  }
}
