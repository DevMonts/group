import 'package:flutter/material.dart';
import '../../../features/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const Splash(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Container(
            child: Text("No route defined for ${settings.name}"),
          ),
        );
    }
  }
}
