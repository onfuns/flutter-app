import 'package:flutter/material.dart';
import 'routers/loginPage.dart';
import 'routers/homePage.dart';

class Routers extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => LoginPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/home': (BuildContext context) => HomePage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
    );
  }
}
