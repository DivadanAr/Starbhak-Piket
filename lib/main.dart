import 'package:flutter/material.dart';
import 'package:project_starbhak_piket/pages/absensiPage.dart';
import 'package:project_starbhak_piket/pages/auth/loginPage.dart';
import 'package:project_starbhak_piket/pages/auth/signUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AbsensiPage(),
    );
  }
}