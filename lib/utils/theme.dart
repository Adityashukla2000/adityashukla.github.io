import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  textTheme: const TextTheme(
    headlineMedium: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16),
    headlineSmall: TextStyle(color: Colors.white,fontSize: 12),

  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blueGrey,
  textTheme: const TextTheme(
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white,fontSize: 12),
  ),
);
