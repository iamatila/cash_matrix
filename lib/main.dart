import 'package:cashmatrix/screens/bank_account.dart';
import 'package:cashmatrix/screens/bvn.dart';
import 'package:cashmatrix/screens/create_account.dart';
import 'package:cashmatrix/screens/login.dart';
import 'package:cashmatrix/screens/nav_screen.dart';
import 'package:cashmatrix/screens/onBoarding.dart';
import 'package:cashmatrix/screens/otp.dart';
import 'package:cashmatrix/screens/otpNumber.dart';
import 'package:cashmatrix/screens/phone_account.dart';
import 'package:cashmatrix/screens/registration.dart';
import 'package:cashmatrix/screens/splash1.dart';
import 'package:cashmatrix/screens/welcome1.dart';
import 'package:cashmatrix/screens/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CashMatrix Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavScreen(),
    );
  }
}
