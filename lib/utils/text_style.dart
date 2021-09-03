import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static final header1Style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    color: Colors.white
  );

  static final TextStyle header2Style = header1Style.copyWith(fontSize: 32);
}