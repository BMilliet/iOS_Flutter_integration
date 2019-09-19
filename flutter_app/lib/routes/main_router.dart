import 'package:flutter/material.dart';
import 'package:flutter_app/views/noninitial_views/view_one.dart';
import 'package:flutter_app/views/noninitial_views/view_three.dart';
import 'package:flutter_app/views/noninitial_views/view_two.dart';

import 'named_routes.dart';

class MainRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case NamedRoutes.viewOne:
        return MaterialPageRoute(builder: (_) => ViewOne());
      case NamedRoutes.viewTwo:
        return MaterialPageRoute(builder: (_) => ViewTwo());
      case NamedRoutes.viewThree:
        return MaterialPageRoute(builder: (_) => ViewThree());
    }
  }
}
