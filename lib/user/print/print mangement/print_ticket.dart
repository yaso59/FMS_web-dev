import 'dart:html';

import 'package:flutter/material.dart';

class Print_ticket extends StatefulWidget {
  const Print_ticket({super.key});

  @override
  State<Print_ticket> createState() => _Print_ticketState();
}

class _Print_ticketState extends State<Print_ticket> {
  TextEditingController _ticketNumber =TextEditingController();
  TextEditingController _InvoiceNumber =TextEditingController();
  TextEditingController _companyName =TextEditingController();
  TextEditingController _contactPerson =TextEditingController();
  TextEditingController _contactNumber =TextEditingController();
  TextEditingController _vehileNumber =TextEditingController();
  TextEditingController _price =TextEditingController();
  TextEditingController _amount =TextEditingController();
  TextEditingController _startdate =TextEditingController();
  TextEditingController _enddate =TextEditingController();
  TextEditingController _deliveryName =TextEditingController();
  TextEditingController _deliveryLocation =TextEditingController();
  TextEditingController _Quantity =TextEditingController();
  TextEditingController _Deliverytype =TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isDesktop = MediaQuery.of(context).size.width >= 1100;
    bool istablet = width>= 800 && width< 1100?true : false ;
    bool ismobile = MediaQuery.of(context).size.width < 800;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
        child: ismobile?SizedBox(
        width: width,
        // height: height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    controller: _ticketNumber,
                    decoration: InputDecoration(
                  labelText: 'TicketNumber',
                  hintText: 'TicketNumber',
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelStyle: const TextStyle(color: Colors.black),
                  hintStyle: const TextStyle(color: Colors.grey),

                  ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _InvoiceNumber,
                    decoration: InputDecoration(
                      labelText: 'InvoiceNumber',
                      hintText: 'InvoiceNumber',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _companyName,
                    decoration: InputDecoration(
                      labelText: 'companyName',
                      hintText: 'companyName',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _contactPerson,
                    decoration: InputDecoration(
                      labelText: 'contactPerson',
                      hintText: 'contactPerson',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _contactNumber,
                    decoration: InputDecoration(
                      labelText: 'contactNumber',
                      hintText: 'contactNumber',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _vehileNumber,
                    decoration: InputDecoration(
                      labelText: 'vehileNumber',
                      hintText: 'vehileNumber',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _price,
                    decoration: InputDecoration(
                      labelText: 'price',
                      hintText: 'price',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _amount,
                    decoration: InputDecoration(
                      labelText: 'amount',
                      hintText: 'amount',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _startdate,
                    decoration: InputDecoration(
                      labelText: 'startdate',
                      hintText: 'startdate',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _enddate,
                    decoration: InputDecoration(
                      labelText: 'enddate',
                      hintText: 'enddate',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _deliveryName,
                    decoration: InputDecoration(
                      labelText: 'deliveryName',
                      hintText: 'deliveryName',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _deliveryLocation,
                    decoration: InputDecoration(
                      labelText: 'deliveryLocation',
                      hintText: 'deliveryLocation',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller:_Quantity ,
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      hintText: 'Quantity',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller:_Deliverytype ,
                    decoration: InputDecoration(
                      labelText: 'Deliverytype',
                      hintText: 'Deliverytype',
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintStyle: const TextStyle(color: Colors.grey),

                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){}, child: Text('print'))



                ],
              ),
            ),
          ),

        ):istablet? Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text('Pending Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20,),
                child: Row(
                  children: [
                    Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            controller: _ticketNumber,
                            decoration: InputDecoration(
                              labelText: 'TicketNumber',
                              hintText: 'TicketNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _InvoiceNumber,
                            decoration: InputDecoration(
                              labelText: 'InvoiceNumber',
                              hintText: 'InvoiceNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _companyName,
                            decoration: InputDecoration(
                              labelText: 'companyName',
                              hintText: 'companyName',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _contactPerson,
                            decoration: InputDecoration(
                              labelText: 'contactPerson',
                              hintText: 'contactPerson',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _contactNumber,
                            decoration: InputDecoration(
                              labelText: 'contactNumber',
                              hintText: 'contactNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _vehileNumber,
                            decoration: InputDecoration(
                              labelText: 'vehileNumber',
                              hintText: 'vehileNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _price,
                            decoration: InputDecoration(
                              labelText: 'price',
                              hintText: 'price',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                        ],
                      ) ,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 20,left: 20,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              controller: _amount,
                              decoration: InputDecoration(
                                labelText: 'amount',
                                hintText: 'amount',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _startdate,
                              decoration: InputDecoration(
                                labelText: 'startdate',
                                hintText: 'startdate',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _enddate,
                              decoration: InputDecoration(
                                labelText: 'enddate',
                                hintText: 'enddate',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _deliveryName,
                              decoration: InputDecoration(
                                labelText: 'deliveryName',
                                hintText: 'deliveryName',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _deliveryLocation,
                              decoration: InputDecoration(
                                labelText: 'deliveryLocation',
                                hintText: 'deliveryLocation',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller:_Quantity ,
                              decoration: InputDecoration(
                                labelText: 'Quantity',
                                hintText: 'Quantity',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller:_Deliverytype ,
                              decoration: InputDecoration(
                                labelText: 'Deliverytype',
                                hintText: 'Deliverytype',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),

                          ],
                        ),

                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('print'))
            ],
          ),
        ):Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text('Pending Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20,),
                child: Row(
                  children: [
                    Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            controller: _ticketNumber,
                            decoration: InputDecoration(
                              labelText: 'TicketNumber',
                              hintText: 'TicketNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _InvoiceNumber,
                            decoration: InputDecoration(
                              labelText: 'InvoiceNumber',
                              hintText: 'InvoiceNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _companyName,
                            decoration: InputDecoration(
                              labelText: 'companyName',
                              hintText: 'companyName',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _contactPerson,
                            decoration: InputDecoration(
                              labelText: 'contactPerson',
                              hintText: 'contactPerson',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _contactNumber,
                            decoration: InputDecoration(
                              labelText: 'contactNumber',
                              hintText: 'contactNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _vehileNumber,
                            decoration: InputDecoration(
                              labelText: 'vehileNumber',
                              hintText: 'vehileNumber',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: _price,
                            decoration: InputDecoration(
                              labelText: 'price',
                              hintText: 'price',
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 20.0,
                              ),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                              ),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintStyle: const TextStyle(color: Colors.grey),

                            ),
                          ),
                        ],
                      ) ,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,right: 20,left: 20,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              controller: _amount,
                              decoration: InputDecoration(
                                labelText: 'amount',
                                hintText: 'amount',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _startdate,
                              decoration: InputDecoration(
                                labelText: 'startdate',
                                hintText: 'startdate',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _enddate,
                              decoration: InputDecoration(
                                labelText: 'enddate',
                                hintText: 'enddate',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _deliveryName,
                              decoration: InputDecoration(
                                labelText: 'deliveryName',
                                hintText: 'deliveryName',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: _deliveryLocation,
                              decoration: InputDecoration(
                                labelText: 'deliveryLocation',
                                hintText: 'deliveryLocation',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller:_Quantity ,
                              decoration: InputDecoration(
                                labelText: 'Quantity',
                                hintText: 'Quantity',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller:_Deliverytype ,
                              decoration: InputDecoration(
                                labelText: 'Deliverytype',
                                hintText: 'Deliverytype',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: const BorderSide(color: Colors.black,),
                                ),
                                labelStyle: const TextStyle(color: Colors.black),
                                hintStyle: const TextStyle(color: Colors.grey),

                              ),
                            ),
                            SizedBox(height: 20,),

                          ],
                        ),

                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('print'))
            ],
          ),
        )
        ),
      ),
    );
  }
}
