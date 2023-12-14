
import 'package:flutter/material.dart';
import 'package:fms_web/bg.dart';
import 'package:fms_web/user/constants/responsive-page.dart';
import 'package:fms_web/user/user_login/user_login_form.dart';
import 'package:fms_web/user/user_login/user_login_screen_top_image.dart';



class User_login_screen extends StatelessWidget {
  const User_login_screen({Key? key}) : super(key: key);

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
                child: User_login_screen_top_image(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      child: User_login_form(),
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
        User_login_screen_top_image(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: User_login_form(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
