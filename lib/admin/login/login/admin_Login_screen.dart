
import 'package:flutter/material.dart';
import 'package:fms_web/bg.dart';
import 'package:fms_web/user/constants/responsive-page.dart';
import 'admin_login_form.dart';
import 'admin_login_screen_top_image.dart';


class Admin_login_screen extends StatelessWidget {
  const Admin_login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
            tablet: MobileLoginScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: Admin_login_screen_top_image(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: Admin_login_form(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Admin_login_screen_top_image(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Admin_login_form(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
