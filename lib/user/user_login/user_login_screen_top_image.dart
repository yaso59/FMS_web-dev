
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class User_login_screen_top_image extends StatelessWidget {
  const User_login_screen_top_image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const defaultPadding = 16.0;
    return Column(
      children: [
        Text(
          "WELCOME USER",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        const SizedBox(height: defaultPadding * 0.5),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Lottie.asset("assets/gif/Animation.json"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}