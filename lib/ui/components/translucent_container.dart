import 'dart:ui';

import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class TranslucentContainer extends StatelessWidget {
  final Widget child;
  Color? color;

  TranslucentContainer({required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Material(
        color: Colors.transparent,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 4, sigmaX: 10,),
              child: Container(
                decoration: BoxDecoration(
                  color: color ?? AppColors.grey.withOpacity(0.8),
                ),
                padding: const EdgeInsets.all(20),
                child: child,
              ),
            )),
      ),
    );
  }
}
