import 'package:flutter/material.dart';

import '../../../constants/primary.dart';


class enquiry_order extends StatefulWidget {
  const enquiry_order({super.key});

  @override
  State<enquiry_order> createState() => _enquiry_orderState();
}

class _enquiry_orderState extends State<enquiry_order> {
  final TextEditingController _ContractNumber = TextEditingController();
  final TextEditingController _companyName = TextEditingController();
  final TextEditingController _contactPerson = TextEditingController();
  final TextEditingController _contactNumber = TextEditingController();
  final TextEditingController _quantity = TextEditingController();
  final TextEditingController _startdate = TextEditingController();
  final TextEditingController _enddate = TextEditingController();

  TextEditingController meterialchoose = TextEditingController();
  String selectedFrequency = "Frequency"; // Change the type to nullable String

  List<String> meterialType = [
    "60mm",
    "40mm",
    "20mm",
    "12mm",
    "6mm",
    "Dust",
    "M -Sand",
    "P -Sand"
  ];

  List<String> Frequencytype = [
    "One time",
    "Weekly",
    "Monthly",
    "Quarterly",
    "Half-yearly",
    "Annually"
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
        body: SingleChildScrollView(
          child: ismobile
              ? SizedBox(
                  width: width,
                  // height: height,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StyledTextFormField(
                          labletxt: "Contract Number",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _ContractNumber,
                        ),
                        StyledTextFormField(
                          labletxt: "Company Name",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _companyName,
                        ),
                        StyledTextFormField(
                          labletxt: "Contact person",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _contactPerson,
                        ),
                        StyledTextFormField(
                          labletxt: "Contact Number",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _contactNumber,
                        ),
                        mydropDown(
                          txtcontroller: meterialchoose,
                          dropitem: meterialType,
                          hinttxt: "Type of Material",
                          dropwidth: width * 0.845,
                        ),
                        StyledTextFormField(
                          labletxt: "Quantity",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _quantity,
                        ),
                        StyledTextFormField(
                          labletxt: "Start Date",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _startdate,
                        ),
                        StyledTextFormField(
                          labletxt: "End Date",
                          fieldwidth: width * 0.9,
                          fieldcontroller: _enddate,
                        ),
                        my_vertical_radio(
                            radiolist: Frequencytype,
                            selctvalue: selectedFrequency,
                            radiowidth: width * 0.845),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Submit")),
                        SizedBox(
                          height: height * 0.09,
                        )
                      ],
                    ),
                  ),
                )
              : istablet
                  ? Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledTextFormField(
                                      labletxt: "Contract Number",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _ContractNumber,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Company Name",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _companyName,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Contact person",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _contactPerson,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Contact Number",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _contactNumber,
                                    ),
                                    mydropDown(
                                      txtcontroller: meterialchoose,
                                      dropitem: meterialType,
                                      hinttxt: "Type of Material",
                                      dropwidth: width * 0.25,
                                    ),

                                    // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledTextFormField(
                                      labletxt: "Quantity",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _quantity,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Start Date",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _startdate,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "End Date",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _enddate,
                                    ),
                                    my_vertical_radio(
                                        radiolist: Frequencytype,
                                        selctvalue: selectedFrequency,
                                        radiowidth: width * 0.25)

                                    // ElevatedButton(onPressed: (){}, child: Text("Submit"))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Submit"))
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledTextFormField(
                                      labletxt: "Contract Number",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _ContractNumber,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Company Name",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _companyName,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Contact person",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _contactPerson,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Contact Number",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _contactNumber,
                                    ),
                                    mydropDown(
                                      txtcontroller: meterialchoose,
                                      dropitem: meterialType,
                                      hinttxt: "Type of Material",
                                      dropwidth: width * 0.26,
                                    ),

                                    // ElevatedButton(onPressed: (){}, child: Text("Save For Later"))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    StyledTextFormField(
                                      labletxt: "Quantity",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _quantity,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "Start Date",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _startdate,
                                    ),
                                    StyledTextFormField(
                                      labletxt: "End Date",
                                      fieldwidth: width * 0.28,
                                      fieldcontroller: _enddate,
                                    ),
                                    my_vertical_radio(
                                        radiolist: Frequencytype,
                                        selctvalue: selectedFrequency,
                                        radiowidth: width * 0.25)

                                    // ElevatedButton(onPressed: (){}, child: Text("Submit"))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Submit"))
                        ],
                      ),
                    ),
        ),
      ),
    );
  }
}
