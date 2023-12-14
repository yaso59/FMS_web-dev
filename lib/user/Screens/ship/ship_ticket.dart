import 'package:flutter/material.dart';
import 'package:fms_web/user/print/print%20mangement/print_ticket.dart';

import '../../constants/primary.dart';




class ship_ticket extends StatefulWidget {
  const ship_ticket({super.key});

  @override
  State<ship_ticket> createState() => _ship_ticketState();
}



class _ship_ticketState extends State<ship_ticket> {



  TextEditingController TicketNumber =TextEditingController();
  TextEditingController BuyerName =TextEditingController();
  TextEditingController MaterialType =TextEditingController();
  TextEditingController VehicleNumber =TextEditingController();
  TextEditingController EmptyVehicleWeight =TextEditingController();
  TextEditingController EmptyVechicleInTime =TextEditingController();
  TextEditingController LoadedVehicleWeight =TextEditingController();
  TextEditingController LoadedVehicleOutTime =TextEditingController();
  TextEditingController NetMaterialWeight =TextEditingController();


 // String selectedquentity="Quntity";
 //  String selectedpay="pay";
 //  String selecteddelivery="delivery";
 //
 //
 //
 //
 //
 //  List<String> QuantityList =[
 //    "Unit",
 //    "Ton",
 //  ];
 //
 //  List<String> payment =[
 //    "Cash",
 //    "card",
 //    "UPI",
 //    "Credit",
 //  ];
 //
 //  List<String> deliveytype =[
 //    "By Self",
 //    "By Company",
 //
 //  ];
 //
 //  List<String> meterialType =[
 //    "60mm",
 //    "40mm",
 //    "20mm",
 //    "12mm",
 //    "6mm",
 //    "Dust",
 //    "M -Sand",
 //    "P -Sand"
 //  ];

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
                  StyledTextFormField(labletxt: "Ticket Number", fieldwidth: width*0.9, fieldcontroller: TicketNumber,),
                  StyledTextFormField(labletxt: "Buyer Name", fieldwidth: width*0.9, fieldcontroller: BuyerName,),
                  StyledTextFormField(labletxt: "Material Type", fieldwidth: width*0.9, fieldcontroller: MaterialType,),
                  StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.9, fieldcontroller: VehicleNumber,),
                  StyledTextFormField(labletxt: "Empty Vehicle Weight ", fieldwidth: width*0.9, fieldcontroller: EmptyVehicleWeight,),
                  //mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.845,),

                  StyledTextFormField(labletxt: "Empty Vechicle  In Time", fieldwidth: width*0.9, fieldcontroller: EmptyVechicleInTime,),
                  StyledTextFormField(labletxt: "Loaded Vehicle Weight", fieldwidth: width*0.9, fieldcontroller: LoadedVehicleWeight,),
                  //my_radio(radiolist: payment, selctvalue: selectedpay, radiowidth: width*0.9,),
                  StyledTextFormField(labletxt: "Loaded Vehicle Out Time", fieldwidth: width*0.9, fieldcontroller: LoadedVehicleOutTime,),
                  StyledTextFormField(labletxt: "Net Material Weight", fieldwidth: width*0.9, fieldcontroller: NetMaterialWeight,),
                  ElevatedButton(onPressed: (){

                  }, child: const Text("Submit")),

                  SizedBox(
                    height:height*0.09,
                  )

                ],
              ),
            ),
          ) :istablet?Container(
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
                          StyledTextFormField(labletxt: "TicketNumber", fieldwidth: width*0.28, fieldcontroller: TicketNumber,),
                          StyledTextFormField(labletxt: "BuyerName", fieldwidth: width*0.28, fieldcontroller: BuyerName,),
                          StyledTextFormField(labletxt: "MaterialType", fieldwidth: width*0.28, fieldcontroller: MaterialType,),
                          StyledTextFormField(labletxt: "VehicleNumber", fieldwidth: width*0.28, fieldcontroller: VehicleNumber,),
                          //StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
                          //mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.25,),

                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StyledTextFormField(labletxt: "EmptyVehicleWeight", fieldwidth: width*0.28, fieldcontroller: EmptyVehicleWeight,),
                          StyledTextFormField(labletxt: "EmptyVechicleInTime", fieldwidth: width*0.28, fieldcontroller: EmptyVechicleInTime,),

                          StyledTextFormField(labletxt: "LoadedVehicleWeight", fieldwidth: width*0.28, fieldcontroller: LoadedVehicleWeight,),
                          StyledTextFormField(labletxt: "LoadedVehicleOutTime", fieldwidth: width*0.28, fieldcontroller: LoadedVehicleOutTime,),

                          StyledTextFormField(labletxt: "NetMaterialWeight", fieldwidth: width*0.28, fieldcontroller: NetMaterialWeight,),
                          //ElevatedButton(onPressed: (){

                          //}, child: Text("Submit"))


                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){

                }, child: const Text("Submit"))
              ],
            ),
          ): Container(
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
                          StyledTextFormField(labletxt: "TicketNumber", fieldwidth: width*0.28, fieldcontroller: TicketNumber,),
                          StyledTextFormField(labletxt: "BuyerName", fieldwidth: width*0.28, fieldcontroller: BuyerName,),
                          StyledTextFormField(labletxt: "MaterialType", fieldwidth: width*0.28, fieldcontroller: MaterialType,),
                          StyledTextFormField(labletxt: "VehicleNumber", fieldwidth: width*0.28, fieldcontroller: VehicleNumber,),
                          //StyledTextFormField(labletxt: "Vehicle Number", fieldwidth: width*0.28, fieldcontroller: _vehileNumber,),
                          //mydropDown(txtcontroller: meterialchoose, dropitem: meterialType, hinttxt: "Type of Material", dropwidth:width*0.25,),

                          // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StyledTextFormField(labletxt: "EmptyVehicleWeight", fieldwidth: width*0.28, fieldcontroller: EmptyVehicleWeight,),
                          StyledTextFormField(labletxt: "EmptyVechicleInTime", fieldwidth: width*0.28, fieldcontroller: EmptyVechicleInTime,),

                          StyledTextFormField(labletxt: "LoadedVehicleWeight", fieldwidth: width*0.28, fieldcontroller: LoadedVehicleWeight,),
                          StyledTextFormField(labletxt: "LoadedVehicleOutTime", fieldwidth: width*0.28, fieldcontroller: LoadedVehicleOutTime,),

                          StyledTextFormField(labletxt: "NetMaterialWeight", fieldwidth: width*0.28, fieldcontroller: NetMaterialWeight,),
                          //ElevatedButton(onPressed: (){

                          //}, child: Text("Submit"))


                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){

                }, child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}