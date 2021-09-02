import 'package:finance_dark_ui_challenge/pages/dashboard/home/home_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/notifications/notifications_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/profile/profile_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/wallet/wallet_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarController {
  static List<Widget> _naviWidgets = [
    HomePage(),
    NotificationsPage(),
    ProfilePage(),
    WalletPage()
  ];

  static ValueNotifier<int> currentPage = ValueNotifier(0)..addListener(() {});

  static void changePage(int newPage) {
    currentPage.value = newPage;
  }

  static Widget get currentWidget => _naviWidgets.elementAt(currentPage.value);

  static List<BottomNavigationBarItem> naviItems = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: "Home"
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      label: "Wallet"
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.text_bubble),
      label: "Notifications"
    ),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),
    label: "")
  ];
}
