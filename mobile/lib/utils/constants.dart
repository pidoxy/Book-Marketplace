// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConst {
  static const String APP_NAME = "E-Library";
  static EdgeInsets appPadding() =>
      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10);
  static String BOOK_PATH = "assets/json/books.json";
}
