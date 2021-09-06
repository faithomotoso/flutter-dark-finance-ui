import 'dart:ui';

import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class TranslucentContainer extends StatelessWidget {
  final Widget child;

  TranslucentContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4, tileMode: TileMode.mirror),
            child: Container(
              decoration: BoxDecoration(
                // color: AppColors.grey.withOpacity(0.8),
                color: Colors.white.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(20),
              child: child,
            ),
          )),
    );
  }
}
