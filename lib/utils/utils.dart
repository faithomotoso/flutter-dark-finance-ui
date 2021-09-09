import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:flutter/material.dart';

const EdgeInsets appPadding = const EdgeInsets.all(12.0);

void showTranslucentDialog(
    {required BuildContext context, required Widget child}) {
  showDialog(
      context: context,
      builder: (ctx) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TranslucentContainer(child: child)),
      barrierColor: Colors.transparent);
}

void showNormalDialog({required BuildContext context, required Widget child}) {
  showDialog(
      context: context,
      builder: (ctx) => child,
      barrierDismissible: true,
      barrierColor: Colors.transparent);
}
