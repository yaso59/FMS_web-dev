// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:one_clock/one_clock.dart';
// import '../../constants/primary.dart';
// import '../credit/credit_page.dart';
// import '../enquiry/enquiry_page.dart';
// import '../purchese/purchese_page.dart';
// import '../sales/sales_page.dart';
// import '../ship/ship_page.dart';
//
// class tab_home extends StatefulWidget {
//   const tab_home({super.key});
//
//   @override
//   State<tab_home> createState() => _tab_homeState();
// }
//
// class _tab_homeState extends State<tab_home> {
// String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
//
// final List<String> mainMenu=[
//   "Purchase History",
//   "Sales History",
//   "Shipment History",
//   "Credit History",
//   "Enquiry History"
// ];
//
// List<WidgetBuilder> onpages=[
//     (context)=> purchese_page(pageNo: 1,),
//     (context)=> sales_page(pageNo: 1,),
//     (context)=> ship_page(),
//     (context)=> Credit_page(pageNo: 1,),
//     (context)=> enquiry_page(pageNo: 1,),
//
//   ];
//
//  @override
//   void initState() {
// LocationFetch.fetchLocationData(context).then((result) {
//       if (result != null) {
//       } else {
//         // Handle the case where the result is null
//       }
//     });    // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // backgroundColor: pribackcolor,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 70,left: 40),
//                   child: Container(
//                     height: 25,
//                     width: 250,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Colors.white,
//                       boxShadow: [boxshadow]
//                     ),
//                     child: Row(
//                       children: [
//
//                         Expanded(
//                           child: Center(
//                             child: Row(
//
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                  Text(
//                                   "$placeName",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//
//                                 Text(
//                                   "$formattedDate",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Center(
//                           child: DigitalClock(
//                             showSeconds: true,
//                             isLive: true,
//                             textScaleFactor: 0.69,
//                             digitalClockTextColor: Colors.black,
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.rectangle,
//                               borderRadius: BorderRadius.all(Radius.circular(15)),
//                             ),
//                             datetime: DateTime.now(),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//                // Add spacing between top container and menu items
//               Container(
//                 height: height*0.9,
//                 width: width*0.9,
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3, // Set cross-axis count to 2
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: EdgeInsets.all(65), // Adjust spacing around items
//                       child: InkWell(
//                         onTap: () {
//                      Navigator.push(context,MaterialPageRoute(builder: onpages[index]) );
//
//                         },
//                         child: Container(
//                           width: 20,
//                           height: 20,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                                           color: Colors.white,
//                             boxShadow: [boxshadow]
//                             // color: pricolor,
//                           ),
//                           child: Center(
//                             child: Text(
//                               mainMenu[index],
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   itemCount: mainMenu.length,
//                   shrinkWrap: true,
//                   // physics: NeverScrollableScrollPhysics(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../print/print mangement/print_ticket.dart';
import '../../utils/Navigation/nav_bar.dart';
import 'package:flutter_animate/flutter_animate.dart';


class tab_home extends StatefulWidget {
  const tab_home({Key? key}) : super(key: key);

  @override
  State<tab_home> createState() => _tab_homeState();
}

class _tab_homeState extends State<tab_home> {
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
