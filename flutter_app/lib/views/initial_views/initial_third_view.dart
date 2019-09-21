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
      body: _body(),
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

  Widget _body() {
    return SingleChildScrollView(
        child: FutureBuilder(
            future: _messageFromIOS,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    color: Colors.cyan,
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Text("Flutter view"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50, bottom: 50),
                          child: Text(snapshot.data),
                        ),
                        Container(
                          margin: EdgeInsets.all(50),
                          child: Form(
                            child: TextFormField(
                              controller: _textFieldController,
                            ),
                          ),
                        ),
                        RaisedButton(
                          child: Text("Send message to iOS"),
                          onPressed: () {
                            _channel
                                .sendMessageToIOS(_textFieldController.text);
                            _channel.popFlutterView();
                          },
                        )
                      ],
                    )));
              }
            }));
  }
}
