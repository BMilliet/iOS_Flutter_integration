import 'package:flutter_app/views/helper_views/error_view.dart';
import 'package:flutter_app/views/initial_views/initial_fifth_view.dart';
import 'package:flutter_app/views/initial_views/initial_first_view.dart';
import 'package:flutter_app/views/initial_views/initial_fourth_view.dart';
import 'package:flutter_app/views/initial_views/initial_second_view.dart';
import 'package:flutter_app/views/helper_views/main_view.dart';
import 'package:flutter_app/views/initial_views/initial_seventh_view.dart';
import 'package:flutter_app/views/initial_views/initial_sixth_view.dart';
import 'package:flutter_app/views/initial_views/initial_third_view.dart';

class InitialRoute {
  static launch(String route) {
    switch (route) {
      case "initialFirstView":
        return MainView(InitialFirstView());
      case "initialSecondView":
        return MainView(InitialSecondView());
      case "initialThirdView":
        return MainView(InitialThirdView());
      case "initialFourthView":
        return MainView(InitialFourthView());
      case "initialFifthView":
        return MainView(InitialFifthView());
      case "initialSixthView":
        return MainView(InitialSixthView());
      case "initialSeventhView":
        return MainView(InitialSeventhView());
      default:
        return MainView(ErrorView());
    }
  }
}
