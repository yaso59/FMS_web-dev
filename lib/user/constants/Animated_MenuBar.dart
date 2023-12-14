// import 'package:flutter/material.dart';
// import 'package:fms_web/Screens/Dashboard/HomePage_page.dart';
// import 'package:fms_web/Screens/credit/credit_page.dart';
// import 'package:fms_web/Screens/enquiry/enquiry_page.dart';
// import 'package:fms_web/Screens/purchese/purchese_page.dart';
// import 'package:fms_web/Screens/sales/sales_page.dart';
// import 'package:fms_web/Screens/ship/ship_page.dart';
// import 'package:fms_web/constants/primary.dart';
// import 'package:stylish_bottom_bar/model/bar_items.dart';
// import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
// class BottomPage extends StatefulWidget {
//   const BottomPage({Key? key});

//   @override
//   State<BottomPage> createState() => _BottomPageState();
// }

// class _BottomPageState extends State<BottomPage> {
//   int _selectedIndex = 0;
//   PageController controller = PageController();
//   List<Widget> _pages = [
//     DashBoard_page(),
//   purchese_page(),
//   sales_page(),
//   ship_page(),
//   Credit_page(),
//   enquiry_page()
//   ];

// void _onTabTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
  
//   Widget build(BuildContext context) {
//     bool isDesktop = MediaQuery.of(context).size.width > 600;
//      final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     double mobtxt =9;
//     double destxt=14;
//     double dexicon=32;
//     double mobicon=22;
//     print("width :  $width");
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
    
//         body: Stack(
//           children: [
//             _pages[_selectedIndex], // Your main content
//             Align(
//            alignment: isDesktop? Alignment.topCenter:Alignment.bottomCenter,
           
//               child: Padding(
//                 padding: isDesktop? EdgeInsets.only(
//                   top: 20):EdgeInsets.only(
//                   bottom: 20),
//                 child: ClipRRect(
//                       borderRadius: BorderRadius.all(
//                     Radius.circular(16.0),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                   color: Colors.white, // Customize the background color
//                       borderRadius: BorderRadius.circular(20)),
//                     height:isDesktop? 55:45, 
//                     width:isDesktop? 900:800,// Adjust the height of the navigation bar
//                     child: StylishBottomBar(
//                       option:isDesktop? BubbleBarOptions(
//                         barStyle: BubbleBarStyle.horizotnal,
//                         bubbleFillStyle: BubbleFillStyle.fill,
//                         opacity: 0.3,
//                       ):AnimatedBarOptions(
//                         iconSize: 32,
//                         barAnimation: BarAnimation.liquid,
//                         iconStyle: IconStyle.animated,
//                         opacity: 0.3,
                        
//                       ),
//                       items: [
//                         BottomBarItem(
//                           icon:  Icon(Icons.dashboard_customize_outlined,size : isDesktop?32:22,),
//                           title:  Text('DASHBOARD',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                           selectedIcon:  Icon(Icons.dashboard_customize_outlined,size : isDesktop?32:22,),
//                         ),
//                         BottomBarItem(
//                           icon:  Icon(Icons.shopping_cart_sharp,size : isDesktop?32:22,),
//                           title:  Text('PURCHASE',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                          selectedIcon:Icon(Icons.shopping_cart_sharp,size : isDesktop?32:22,),
//                         ),
//                         BottomBarItem(
//                           icon:  Icon(Icons.store_sharp,size : isDesktop?32:22,),
//                           title:  Text('SALES',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                           selectedIcon: Icon(Icons.store_sharp,size : isDesktop?32:22,),
//                         ),
//                         BottomBarItem(
//                           icon:  Icon(Icons.fire_truck_sharp,size : isDesktop?32:22,),
//                           title:  Text('SHIPMENT',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                           selectedIcon: Icon(Icons.fire_truck_sharp,size : isDesktop?32:22,),
//                         ),
//                         BottomBarItem(
//                           icon:  Icon(Icons.attach_money_sharp,size : isDesktop?32:22,),
//                           title:  Text('CREDIT',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                           selectedIcon:  Icon(Icons.attach_money_sharp,size : isDesktop?32:22,),
//                         ),
//                         BottomBarItem(
//                           icon:  Icon(Icons.query_stats,size : isDesktop?32:22,),
//                           title:  Text('ENQUIRY',style: TextStyle(fontSize:isDesktop?destxt:mobtxt ),),
//                           backgroundColor: pricolor,
//                           selectedIcon:  Icon(Icons.query_stats,size : isDesktop?32:22,),
//                         ),
//                       ],
//                       hasNotch: true,
//                       currentIndex: _selectedIndex,
//                       onTap: (index) {
//                         setState(() {
//                           _selectedIndex = index;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }