import 'package:flutter/material.dart';
import 'package:fms_web/user/constants/primary.dart';


class credit_request extends StatefulWidget {
  const credit_request({super.key});

  @override
  State<credit_request> createState() => _credit_requestState();
}

class _credit_requestState extends State<credit_request> {
final TextEditingController _ticketNumber =TextEditingController();
final TextEditingController _InvoiceNumber =TextEditingController();
final TextEditingController _creditNumber =TextEditingController();
final TextEditingController _companyName =TextEditingController();
final TextEditingController _contactPerson =TextEditingController();
final TextEditingController _contactNumber =TextEditingController();
final TextEditingController _vehileNumber =TextEditingController();
final TextEditingController _quantity =TextEditingController();
final TextEditingController _price =TextEditingController();
final TextEditingController _amount =TextEditingController();
final TextEditingController _amount_paid =TextEditingController();
final TextEditingController _amountOutstatding =TextEditingController();
TextEditingController meterialchoose =TextEditingController();

        String selectedcredit="credit"; 

  List<String> credittype =[
  "Weekly" ,
  "Monthly",
   "Quarterly",
    "Half-yearly"
];

  List<String> meterialType =[
  "60mm",
  "40mm",
  "20mm",
  "12mm",
  "6mm",
  "Dust",
  "M -Sand",
  "P -Sand"
];

 
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
        body:SingleChildScrollView(
          child: ismobile?SizedBox(
              width: width,
              // height: height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                           StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.9, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.9, fieldcontroller: _InvoiceNumber,),
                          StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.9, fieldcontroller: _creditNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.9, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.9, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.9, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.9, fieldcontroller: _vehileNumber,),
                             mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.845,),
                          StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.9, fieldcontroller: _quantity,),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.9, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.9, fieldcontroller: _amount,),
                          StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.9, fieldcontroller: _amount_paid,),
                          StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.9, fieldcontroller: _amountOutstatding,),
                          my_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.9,),
                          ElevatedButton(onPressed: (){}, child: const Text("Submit")),
                     SizedBox(
                      height:50,
                    )
                    
                  ],
                ),
              ),
            ) :istablet? Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.28, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.28, fieldcontroller: _InvoiceNumber,),
                          StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.28, fieldcontroller: _creditNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
        
                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15,),
                             mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.25,),
                          StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28, fieldcontroller: _quantity,),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28, fieldcontroller: _amount,),
                          StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.28, fieldcontroller: _amount_paid,),
                          StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.28, fieldcontroller: _amountOutstatding,),
                          my_vertical_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.28,),
                          
          
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Submit"))
              ],
            ),
          ):Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.28, fieldcontroller: _ticketNumber,),
                          StyledTextFormField(labletxt: "Invoice Number", fieldwidth: width*0.28, fieldcontroller: _InvoiceNumber,),
                          StyledTextFormField(labletxt: "Credit Number", fieldwidth: width*0.28, fieldcontroller: _creditNumber,),
                          StyledTextFormField(labletxt: "Company Name", fieldwidth: width*0.28, fieldcontroller: _companyName,),
                          StyledTextFormField(labletxt: "Contact Person Name", fieldwidth: width*0.28, fieldcontroller: _contactPerson,),
                          StyledTextFormField(labletxt: "Contact Number", fieldwidth: width*0.28, fieldcontroller: _contactNumber,),
                          StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
        
                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.26,),
                          StyledTextFormField(labletxt: "Quantity", fieldwidth: width*0.28, fieldcontroller: _quantity,),
                          StyledTextFormField(labletxt: "Price", fieldwidth: width*0.28, fieldcontroller: _price,),
                          StyledTextFormField(labletxt: "Amount", fieldwidth: width*0.28, fieldcontroller: _amount,),
                          StyledTextFormField(labletxt: "Amount Paid", fieldwidth: width*0.28, fieldcontroller: _amount_paid,),
                          StyledTextFormField(labletxt: "Amount Outstanding", fieldwidth: width*0.28, fieldcontroller: _amountOutstatding,),
                          my_radio(radiolist: credittype, selctvalue: selectedcredit, radiowidth: width*0.28,),
                          
          
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}