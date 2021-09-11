import 'package:finance_dark_ui_challenge/controller/navigation_bar_controller.dart';
import 'package:finance_dark_ui_challenge/ui/components/navigation_bar.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  static const String pageName = "/";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.black,
        bottomNavigationBar: NavigationBar(),
        body: SafeArea(
            child: ValueListenableBuilder<int>(
          valueListenable: NavigationBarController.currentPage,
          builder: (context, page, child) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: NavigationBarController.currentWidget,
            );
          },
        )),
      ),
    );
  }
}
