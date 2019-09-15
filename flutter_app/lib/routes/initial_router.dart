import 'package:flutter_app/views/helper_views/error_view.dart';
import 'package:flutter_app/views/initial_views/initial_first_view.dart';
import 'package:flutter_app/views/initial_views/initial_second_view.dart';
import 'package:flutter_app/views/helper_views/main_view.dart';

class InitialRoute {
  static launch(String route) {
    switch (route) {
      case "initialFirstView":
        return MainView(InitialFirstView());
      case "initialSecondView":
        return MainView(InitialSecondView());
      default:
        return MainView(ErrorView());
    }
  }
}
