import 'package:flutter/material.dart';
import 'package:fms_web/user/Screens/sales/sales_page.dart';
import 'package:fms_web/user/constants/primary.dart';

import 'material_management/material_page.dart';



class Print_page extends StatefulWidget {
  final int pageNo;
  const Print_page({super.key, required this.pageNo});

  @override
  State<Print_page> createState() => _Print_pageState();
}

class _Print_pageState extends State<Print_page> {
  final List<Widget> _pages = [
    const Material_Page(),
    const Material_Page(),
    const Material_Page()
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
                        titleone: "M A T E R I A L",
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
                        titleone: "M A T E R I A L",
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
            titleone: "M A T E R I A L",
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



