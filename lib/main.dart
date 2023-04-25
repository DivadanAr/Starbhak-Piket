import 'package:flutter/material.dart';
import 'package:project_starbhak_piket/components/bottomNavigation.dart';
import 'package:project_starbhak_piket/pages/absensiDataSiswaPage.dart';
import 'package:project_starbhak_piket/pages/absensiDokumPage.dart';
import 'package:project_starbhak_piket/pages/absensiPage.dart';
import 'package:project_starbhak_piket/pages/absensiRekapPage.dart';
import 'package:project_starbhak_piket/pages/auth/loginPage.dart';
import 'package:project_starbhak_piket/pages/auth/signUpPage.dart';
import 'package:project_starbhak_piket/pages/changeEmail.dart';
import 'package:project_starbhak_piket/pages/chart.dart';
import 'package:project_starbhak_piket/pages/dataSiswa.dart';
import 'package:project_starbhak_piket/pages/editProfile.dart';
import 'package:project_starbhak_piket/pages/homePage.dart';
import 'package:project_starbhak_piket/pages/profile.dart';
import 'package:project_starbhak_piket/pages/rekapitulasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}