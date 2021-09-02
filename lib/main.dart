import 'package:finance_dark_ui_challenge/utils/navi/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance UI Replica',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: "/dashboard",
    );
  }
}

