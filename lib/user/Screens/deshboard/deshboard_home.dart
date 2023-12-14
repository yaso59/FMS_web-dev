import 'package:flutter/material.dart';

import '../../constants/responsive-page.dart';
import 'deshboard_management/des_deshboard.dart';
import 'deshboard_management/mobile_deshboard.dart';
import 'deshboard_management/tab_deshboard.dart';


class deshboard_home extends StatelessWidget {
  const deshboard_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile_deshboard(), tablet: tab_deshboard(), desktop: des_deshboard());

  }
}