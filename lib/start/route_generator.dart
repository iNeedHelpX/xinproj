import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xinproj/pages/homepage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return GetPageRoute(
          //go to home page
          page: () => HomePage(),
        );
      case '/checkout':
        return GetPageRoute(
            // page: () => CheckoutPage(),
            );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
