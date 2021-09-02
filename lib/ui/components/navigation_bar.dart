import 'package:finance_dark_ui_challenge/controller/navigation_bar_controller.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: NavigationBarController.currentPage,
        builder: (context, page, child) {
          return Theme(
            data: Theme.of(context).copyWith(canvasColor: AppColors.black),
            child: BottomNavigationBar(
              items: NavigationBarController.naviItems,
              currentIndex: page,
              onTap: NavigationBarController.changePage,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.white.withOpacity(0.8),
              fixedColor: AppColors.orange,
            ),
          );
        });
  }
}
