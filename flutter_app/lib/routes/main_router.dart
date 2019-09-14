import 'package:flutter/material.dart';
import 'package:flutter_app/views/error_view.dart';

class MainRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case "view":
        return MaterialPageRoute(builder: (_) => Container());
      default:
        return MaterialPageRoute(builder: (_) => ErrorView());
    }
  }
}
