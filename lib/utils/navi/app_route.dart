import 'package:finance_dark_ui_challenge/pages/dashboard/dashboard.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/home/your_cards/your_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route _navigate(Widget page, String pageName) {
    return CupertinoPageRoute(
        builder: (_) => page, settings: RouteSettings(name: pageName));
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case "/":
        page = Dashboard();
        break;

      case "/your_cards":
        page = YourCardsPage();
        break;

      default:
        page = Container(color: Colors.white);
    }

    return _navigate(page, settings.name!);
  }
}
