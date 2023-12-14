import 'package:flutter/material.dart';
import 'package:fms_web/user/Screens/home/mob_home.dart';
import '../../constants/responsive-page.dart';
import 'des_Home.dart';
import 'tab_home.dart';


class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mob_home(), tablet: tab_home(), desktop: Des_home());
  }
}