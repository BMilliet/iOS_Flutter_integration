import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';

class InitialThirdView extends StatefulWidget {
  _InitialThirdViewState createState() => _InitialThirdViewState();
}

class _InitialThirdViewState extends State<InitialThirdView> {
  final _channel = Channel();
  final _textFieldController = TextEditingController();
  Future<String> _messageFromIOS = Channel().getMessageFromIOS();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: FutureBuilder(
              future: _messageFromIOS,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return _buildBody("");
                }
                return _buildBody(snapshot.data);
              })),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Initial Third View"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          _channel.popFlutterView();
        },
      ),
    );
  }

  Widget _buildBody(String text) {
    return Container(
        color: Colors.cyan,
        child: Center(
            child: Column(
          children: <Widget>[
            _description(),
            _textField(text),
            _textFormField(),
            _raisedButton()
          ],
        )));
  }

  Container _textField(String text) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Text(text),
    );
  }

  Container _textFormField() {
    return Container(
      margin: EdgeInsets.all(50),
      child: Form(
        child: TextFormField(
          controller: _textFieldController,
        ),
      ),
    );
  }

  Container _description() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Text("Flutter view"),
    );
  }

  RaisedButton _raisedButton() {
    return RaisedButton(
      child: Text("Send message to iOS"),
      onPressed: () {
        _channel.sendMessageToIOS(_textFieldController.text);
        _channel.popFlutterView();
      },
    );
  }
}
