import 'package:flutter/material.dart';
import 'package:multi_role_base_app/dropdown_screen.dart';
import 'package:multi_role_base_app/home_screen.dart';
import 'package:multi_role_base_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        home:SplashScreen(),
      );
    }
  }
