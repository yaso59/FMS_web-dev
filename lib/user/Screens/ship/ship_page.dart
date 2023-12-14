import 'package:flutter/material.dart';
import 'package:fms_web/user/Screens/sales/sales_management/sale_ticket.dart';

import '../../constants/primary.dart';
import 'ship_ticket.dart';


class ship_page extends StatefulWidget {
  final int pageNo;

  const ship_page({super.key, required this.pageNo});

  @override
  State<ship_page> createState() => _ship_pageState();
}

class _ship_pageState extends State<ship_page> {
  final List<Widget> _pages = [
    const ship_ticket(),
    const ship_ticket(),
    const ship_ticket()
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = width >= 800 && width < 1100 ? true : false;
    bool ismobile = MediaQuery.of(context).size.width < 800;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: ismobile
              ? AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
          )
              : null,
          body: ismobile
              ? Container(
            child: _pages[widget.pageNo],
          )
              : istablet
              ? Container(
            color: Colors.green,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      child: const myDrawer(
                        titleone: "S H I P M E N T",
                        titletwo: "V O U C H E R",
                        titlethree: "H I S T O R Y",
                        Drawerimage: 'assets/images/dump-truck.png',
                        pageone: ship_page(
                          pageNo: 1,
                        ),
                        pagetwo: null,
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Container(
                      child: _pages[widget.pageNo],
                      // color: Colors.pink,
                    ))
              ],
            ),
          )
              : Container(
            color: Colors.green,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      child: const myDrawer(
                        titleone: "S H I P M E N T",
                        titletwo: "V O U C H E R",
                        titlethree: "H I S T O R Y",
                        Drawerimage: 'assets/images/dump-truck.png',
                        pageone: ship_page(
                          pageNo: 1,
                        ),
                        pagetwo: null,
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      child: _pages[widget.pageNo],
                      // color: Colors.pink,
                    ))
              ],
            ),
          ),
          drawer: ismobile
              ? const myDrawer(
            titleone: "S H I P M E N T",
            titletwo: "V O U C H E R",
            titlethree: "H I S T O R Y",
            Drawerimage: 'assets/images/dump-truck.png',
            pageone: ship_page(pageNo: 1),
            pagetwo: null,
          )
              : null,
        ));
  }
}
