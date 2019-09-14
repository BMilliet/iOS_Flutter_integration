import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Error View"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          SystemNavigator.pop();
        },
      ),
    );
  }

  Widget _body() {
    return Container(color: Colors.red);
  }
}
