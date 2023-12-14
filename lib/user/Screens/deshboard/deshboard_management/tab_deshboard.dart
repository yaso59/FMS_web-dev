// import 'package:flutter/material.dart';
// class tab_deshboard extends StatefulWidget {
//   const tab_deshboard({super.key});
//
//   @override
//   State<tab_deshboard> createState() => _tab_deshboardState();
// }
//
// class _tab_deshboardState extends State<tab_deshboard> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Text(
//               'deshBord'
//           ),
//         ),
//
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fms_web/user/constants/primary.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/primary.dart';
import '../../credit/credit_management/credit_history.dart';
import '../../enquiry/enquiry_management/enquriy_history.dart';
import '../../purchese/purchase_Management/purchase_history/purchase_home_history.dart';
import '../../sales/sales_management/sales_history.dart';
import '../../ship/ship_management/ship_history.dart';

class tab_deshboard extends StatefulWidget {
  const tab_deshboard({Key? key}) : super(key: key);

  @override
  State<tab_deshboard> createState() => _tab_deshboardState();
}

class _tab_deshboardState extends State<tab_deshboard> {
  var casetex = 'Sales History';

  Widget handleDrawerSelection(String value) {
    switch (value) {
      case 'Purchase History':
        return  purchase_home_history();

      case 'Sales History':
        return Sales_history();

      case 'Shipment History':
        return  ship_history();

      case 'Credit History':
        return credit_history();

      case 'Enquiry History':
        return enquriy_history();

      default:
        return MaterialApp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                // Drawer for desktop
                Container(
                  width: 250, // Adjust the width of the drawer as needed
                  child: Drawer(
                    backgroundColor: Colors.grey[200],
                    elevation: 0, // Remove the shadow
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        DrawerHeader(
                          decoration: BoxDecoration(
                            color: pribackcolor,
                          ),
                          child: Container(
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/dashboard.png', // Replace with the path to your Lottie animation file
                                  width: 50, // Adjust the width as needed
                                  height: 50, // Adjust the height as needed
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'History page',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.shop),
                          title: Text('Purchase History'),
                          onTap: () {
                            setState(() {
                              casetex = 'Purchase History';
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.shopping_cart_sharp),
                          title: Text('Sales History'),
                          onTap: () {
                            setState(() {
                              casetex = 'Sales History';
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.fire_truck_sharp),
                          title: Text('Shipment History'),
                          onTap: () {
                            setState(() {
                              casetex = 'Shipment History';
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.attach_money_sharp),
                          title: Text('Credit History'),
                          onTap: () {
                            setState(() {
                              casetex = 'Credit History';
                            });
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.query_stats),
                          title: Text('Enquriy History'),
                          onTap: () {
                            setState(() {
                              casetex = 'Enquiry History';
                            });
                          },
                        ),
                        // Add more ListTiles as needed
                      ],
                    ),
                  ),
                ),
                // Your main content goes here
                Expanded(
                  child: Container(
                    color: Colors.grey[200], // Change this color as needed
                    child: Center(
                      child: handleDrawerSelection(casetex),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
