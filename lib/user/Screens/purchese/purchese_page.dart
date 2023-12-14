import 'package:flutter/material.dart';
import 'package:fms_web/user/Screens/purchese/purchase_Management/voucher_input.dart';

import '../../constants/primary.dart';


class purchese_page extends StatefulWidget {
  final int pageNo;

  const purchese_page({super.key, required this.pageNo});

  @override
  State<purchese_page> createState() => _purchese_pageState();
}

class _purchese_pageState extends State<purchese_page> {
  final List<Widget> _pages = [
    const perchese_voucher(),
    const perchese_voucher(),
    const perchese_voucher()
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = width >= 800 && width < 1100 ? true : false;
    bool ismobile = width < 800;

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
                    width: width,
                    height: height,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(

                              child: const myDrawer(
                                titleone: "P U R C H A S E",
                                titletwo: "V O U C H E R",
                                titlethree: "H I S T O R Y",
                                Drawerimage: 'assets/images/shopping-cart.png',
                                pageone: purchese_page(pageNo: 2),
                                pagetwo: null,
                              ),
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              child: _pages[widget.pageNo],
                              // color: Colors.pink,
                            ))
                      ],
                    ),
                  )
                : Container(
                    width: width,
                    height: height,

                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.blue,
                              child: const myDrawer(
                                titleone: "P U R C H A S E",
                                titletwo: "V O U C H E R",
                                titlethree: "H I S T O R Y",
                                Drawerimage: 'assets/images/shopping-cart.png',
                                pageone: purchese_page(pageNo: 2),
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
                titleone: "P U R C H A S E",
                titletwo: "V O U C H E R",
                titlethree: "H I S T O R Y",
                Drawerimage: 'assets/images/shopping-cart.png',
                pageone: purchese_page(pageNo: 2),
                pagetwo: null,
              )
            : null,
      ),
    );
  }
}
