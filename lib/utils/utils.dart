import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:flutter/material.dart';

const EdgeInsets appPadding = const EdgeInsets.all(12.0);

void showTranslucentDialog(
    {required BuildContext context, required Widget child}) {
  showDialog(
      context: context,
      builder: (ctx) => TranslucentContainer(child: child),
      barrierColor: Colors.transparent);
}
