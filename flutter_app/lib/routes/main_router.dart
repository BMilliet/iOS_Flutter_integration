import 'package:flutter/material.dart';

class MainRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => Container(color: Colors.purple));
    }
  }
}
