// import 'package:flutter/material.dart';
// import 'package:fms_web/user/constants/primary.dart';
//
// import 'package:intl/intl.dart';
// import 'package:one_clock/one_clock.dart';
//
// import '../credit/credit_page.dart';
// import '../enquiry/enquiry_page.dart';
// import '../purchese/purchese_page.dart';
// import '../sales/sales_page.dart';
// import '../ship/ship_page.dart';
//
// class mob_home extends StatefulWidget {
//   const mob_home({super.key});
//
//   @override
//   State<mob_home> createState() => _mob_homeState();
// }
//
// class _mob_homeState extends State<mob_home> {
//   String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
//
//   final List<String> mainMenu = [
//     "Purchase History",
//     "Sales History",
//     "Shipment History",/
//     "Credit History",
//     "Enquiry History"
//   ];
//
//
//
//   List<WidgetBuilder> onpages=[
//     (context)=> const purchese_page(pageNo: 1,),
//     (context)=> const sales_page(pageNo: 1,),
//    // (context)=> const ship_page(pageNo: null,),
//     (context)=> const Credit_page(pageNo: 1,),
//     (context)=> const enquiry_page(pageNo: 1,),
//   ];
//
//
// String? locationName;
//
//
//
// @override
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
//                   padding: const EdgeInsets.only(top: 20,left: 20),
//                   child: Card(
//                     elevation: 3,
//
//                     child: Container(
//                       height: 25,
//                       width: 250,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [boxshadow]
//                         // color: pricolor,
//                       ),
//                       child: Row(
//                         children: [
//
//                           Expanded(
//                             child: Center(
//                               child: Row(
//
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                    Text(
//                                     placeName,
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 13,
//                                     ),
//                                   ),
//
//                                   Text(
//                                     formattedDate,
//                                     style: const TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: DigitalClock(
//                               showSeconds: true,
//                               isLive: true,
//                               textScaleFactor: 0.69,
//                               digitalClockTextColor: Colors.black,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                               ),
//                               datetime: DateTime.now(),
//                             ),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//                // Add spacing between top container and menu items
//               SizedBox(
//                 height: height*0.9,
//                 width: width*0.9,
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Set cross-axis count to 2
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(30), // Adjust spacing around items
//                       child: InkWell(
//                         onTap: () {
//                      Navigator.push(context,MaterialPageRoute(builder: onpages[index]) );
//
//                         },
//                         child: Container(
//                           width: 25,
//                           height: 25,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(16),
//                              color: Colors.white,
//
//                             boxShadow: [boxshadow]
//
//                             // color: pricolor,
//                           ),
//                           child: Center(
//                             child: Text(
//                               mainMenu[index],
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: width*0.030,
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

class mob_home extends StatefulWidget {
  const mob_home({Key? key}) : super(key: key);

  @override
  State<mob_home> createState() => _mob_homeState();
}

class _mob_homeState extends State<mob_home> {
  double _opacity = 0.0;

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
        child: Column(
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Nav_bar(pageint: 3),
                  ),
                );
              },

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Print_ticket(),
                  ),
                );
              },

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pending',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
