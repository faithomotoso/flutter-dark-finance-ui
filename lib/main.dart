import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:finance_dark_ui_challenge/utils/navi/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
            headline6: TextStyle(color: Colors.white),
            subtitle1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
          ),
          fontFamily: "Poppins",
          chipTheme: ChipThemeData(
            disabledColor: AppColors.grey,
            selectedColor: AppColors.orange,
            secondaryLabelStyle: TextStyle(color: Colors.white),labelPadding: EdgeInsets.all(18),
            brightness: Brightness.light,
            labelStyle: TextStyle(color: Colors.white),
            padding: const EdgeInsets.all(1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            secondarySelectedColor:
                AppColors.orange,
            backgroundColor: Theme.of(context).chipTheme.backgroundColor,
          ),
          canvasColor: AppColors.grey),
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: "/",
    );
  }
}
