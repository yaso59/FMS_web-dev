import 'dart:html';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fms_web/user/Screens/enquiry/enquiry_management/enquriy_history.dart';
import 'package:fms_web/user/Screens/sales/sales_management/sales_history.dart';
import 'package:fms_web/user/Screens/ship/ship_management/ship_history.dart';
import 'package:fms_web/user/Screens/ship/ship_page.dart';
import 'package:fms_web/user/Screens/ship/ship_ticket.dart';

import 'admin/login/login/admin_Login_screen.dart';
import 'user/Screens/credit/credit_management/credit_history.dart';
import 'user/Screens/deshboard/deshboard_home.dart';
import 'user/Screens/purchese/purchase_Management/purchase_history/purchase_home_history.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAwmGnlQgYrY8i5ygt5zhFab1ayD7x1Jdk",
          authDomain: "fmsweb-85b7f.firebaseapp.com",
          projectId: "fmsweb-85b7f",
          storageBucket: "fmsweb-85b7f.appspot.com",
          messagingSenderId: "685587154659",
          appId: "1:685587154659:web:f7bd17673e84ab66c967d6"));

  // Initialize Flutter bindings

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: Image.asset("assets/images/dump-truck.png"),
            nextScreen:  Admin_login_screen(),

            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.grey));
  }
}
