import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routes/main_router.dart';

class MainView extends StatelessWidget {
  Widget _initialView;
  MainView(this._initialView);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        onGenerateRoute: MainRouter.generatedRoute,
        home: _initialView);
  }
}
