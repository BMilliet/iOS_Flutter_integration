import 'package:flutter/material.dart';

class ViewFour extends StatefulWidget {
  _ViewFourState createState() => _ViewFourState();
}

class _ViewFourState extends State<ViewFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("View Four"),
    );
  }
}
