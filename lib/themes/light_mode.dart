import 'package:flutter/material.dart';

import '../components/constants.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
      surface: Colors.grey.shade300,
      // primary: Colors.grey.shade500,
      // primary: Colors.grey.shade500,
      primary: kPrimary,
      secondary: kSecondary,
      tertiary: Colors.white,
      inversePrimary: Colors.grey.shade700),
);
