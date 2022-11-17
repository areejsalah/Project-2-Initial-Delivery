import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sections_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(
                fontSize: 20, color: Color.fromRGBO(158, 158, 158, 1))),
        scaffoldBackgroundColor: (Colors.grey[400]),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.cyan[800],
          foregroundColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
            textTheme: const TextTheme(
                headline1:
                    TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.cyan[800],
            foregroundColor: Colors.white)),
    home: const SectionsScreen(),
  ));
}
