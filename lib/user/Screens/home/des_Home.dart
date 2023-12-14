
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../print/print mangement/print_ticket.dart';
import '../../utils/Navigation/nav_bar.dart';
import 'package:flutter_animate/flutter_animate.dart';


class Des_home extends StatefulWidget {
  const Des_home({Key? key}) : super(key: key);

  @override
  State<Des_home> createState() => _Des_homeState();
}

class _Des_homeState extends State<Des_home> {
  double _opacity = 0.0;
  double _buttonSize = 30.0; // Adjust the button size

  @override
  void initState() {
    super.initState();
    // Add an animation delay if needed
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Lottie.asset('assets/gif/animation.json'),
                ),
                SizedBox(height: 20),
                Container(height: 100,
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 1),
                    tween: Tween<double>(begin: 0.0, end: _opacity),
                    builder: (context, double value, child) {
                      return Opacity(
                        opacity: value,
                        child: Text(
                          'Welcome to you!',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ).animate().tint(color: Colors.black87).then().shake( ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Positioned(
              bottom: 25,
              right: 15,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      // transform: Matrix4.translationValues(0, isHover ? -20 : 0, 0),
                      child: InkWell(
                        onTap: () {

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Nav_bar(pageint: 2,)));

                        },
                        child: Container(
                          height: 40,
                          width: 140,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            // color: isHover ? secondaryColor : primaryColor,
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'start',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      // transform: Matrix4.translationValues(0, isHover ? -20 : 0, 0),
                      child: InkWell(
                        onTap: () {

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Print_ticket()));

                        },
                        child: Container(
                          height: 40,
                          width: 140,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            // color: isHover ? secondaryColor : primaryColor,
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'pending',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
