import 'package:flutter/material.dart';
import 'package:fms_web/user/constants/primary.dart';
import 'package:lottie/lottie.dart';

import '../../../constants/primary.dart';
import '../../credit/credit_management/credit_history.dart';
import '../../enquiry/enquiry_management/enquriy_history.dart';
import '../../purchese/purchase_Management/purchase_history/purchase_home_history.dart';
import '../../sales/sales_management/sales_history.dart';
import '../../ship/ship_management/ship_history.dart';

class mobile_deshboard extends StatefulWidget {
  const mobile_deshboard({Key? key}) : super(key: key);

  @override
  State<mobile_deshboard> createState() => _mobile_deshboardState();
}

class _mobile_deshboardState extends State<mobile_deshboard> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('History page'),
        ),
        drawer: Drawer(
          backgroundColor:Colors.grey[200] ,
          child: ListView(
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
                        'assets/images/dashboard.png',
                        width: 50,
                        height: 50,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  purchase_home_history()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart_sharp),
                title: Text('Sales History'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sales_history()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.fire_truck_sharp),
                title: Text('Shipment History'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ship_history()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money_sharp),
                title: Text('Credit History'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  credit_history()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.query_stats),
                title: Text('Enquiry History'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => enquriy_history()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Lottie.asset('assets/gif/history.json'),
        ),
      ),
    );
  }
}
