import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconBg extends StatelessWidget {
  final String svgIconPath;

  SvgIconBg({required this.svgIconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.orange, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      child: SvgPicture.asset(
        svgIconPath,
        height: 20,
        width: 20,
        color: Colors.white,
      ),
    );
  }
}
