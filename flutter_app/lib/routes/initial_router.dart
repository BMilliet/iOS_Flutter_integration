import 'package:flutter_app/views/error_view.dart';
import 'package:flutter_app/views/initial_first_view.dart';
import 'package:flutter_app/views/initial_second_view.dart';
import 'package:flutter_app/views/main_view.dart';

class InitialRoute {
  static launch(String route) {
    switch (route) {
      case "initialFirstView":
        return MainView(InitialFirstView());
      case "initialSecondView":
        return MainView(InitialSecondView());
      default:
        print(route);
        return MainView(ErrorView());
    }
  }
}
