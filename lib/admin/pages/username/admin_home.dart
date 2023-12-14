import 'package:flutter/material.dart';
import 'package:fms_web/admin/pages/username/home%20management/mobile_admin_home.dart';
import 'package:fms_web/admin/pages/username/home%20management/tab_admin_home.dart';
import 'package:fms_web/user/constants/responsive-page.dart';

class Admin_home extends StatelessWidget {
  const Admin_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: Mobile_admin_home(), tablet: Tab_admin_home(), desktop: Tab_admin_home());
  }
}

