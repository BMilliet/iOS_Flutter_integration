import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/channel/channel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewThree extends StatefulWidget {
  _ViewThreeState createState() => _ViewThreeState();
}

class _ViewThreeState extends State<ViewThree> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: WebView(
        initialUrl: "https://en.wikipedia.org/wiki/Kraken",
        onWebViewCreated: (WebViewController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(title: Text("Webview"));
  }
}
