import 'package:flutter/material.dart';
import 'package:fms_web/user/Screens/sales/sales_management/sale_ticket.dart';

import '../../constants/primary.dart';


class sales_page extends StatefulWidget {
  final int pageNo;

  const sales_page({super.key, required this.pageNo});

  @override
  State<sales_page> createState() => _sales_pageState();
}

class _sales_pageState extends State<sales_page> {
  final List<Widget> _pages = [
    const sale_ticket(),
    const sale_ticket(),
    const sale_ticket()
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
                                  titleone: "S A L E S",
                                  titletwo: "V O U C H E R",
                                  titlethree: "H I S T O R Y",
                                  Drawerimage: 'assets/images/saless.png',
                                  pageone: sales_page(
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
                                  titleone: "S A L E S",
                                  titletwo: "V O U C H E R",
                                  titlethree: "H I S T O R Y",
                                  Drawerimage: 'assets/images/saless.png',
                                  pageone: sales_page(
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
                  titleone: "S A L E S",
                  titletwo: "V O U C H E R",
                  titlethree: "H I S T O R Y",
                  Drawerimage: 'assets/images/saless.png',
                  pageone: sales_page(pageNo: 1),
                  pagetwo: null,
                )
              : null,
        ));
  }
}
