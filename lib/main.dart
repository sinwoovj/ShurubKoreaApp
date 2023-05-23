import 'package:flutter/material.dart';

import 'config/app_theme.dart';
import 'homescreen.dart';

void main() {
  runApp(MaterialApp(
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    home: HomeScreen(),
  ));
}
