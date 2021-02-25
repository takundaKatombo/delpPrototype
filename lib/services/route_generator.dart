import 'package:delp/view/pages/home.dart';
import 'package:delp/view/pages/login.dart';
import 'package:delp/view/widgets/course_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case '/login':
        return MaterialPageRoute(builder: (context) => Login());

      case '/course':
        return MaterialPageRoute(builder: (context) => Course());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}