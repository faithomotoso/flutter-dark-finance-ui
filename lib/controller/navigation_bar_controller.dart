import 'package:finance_dark_ui_challenge/pages/dashboard/home/home_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/notifications/notifications_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/profile/profile_page.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/wallet/wallet_page.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  static String _baseSvgUrl = "assets/icons";


  static SvgPicture svgPicture(
      {required String assetName, required bool isSelected}) {
    return SvgPicture.asset(
      "$_baseSvgUrl/$assetName",
      color: isSelected ? AppColors.orange : Colors.white,
      height: 20,
      width: 20,
    );
  }
}
