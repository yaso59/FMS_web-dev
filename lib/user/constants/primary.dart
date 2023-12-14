
import 'dart:convert';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:fms_web/user/utils/Navigation/nav_bar.dart';


import 'package:group_radio_button/group_radio_button.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:location/location.dart';
  import 'package:http/http.dart'as http;
  
var pribackcolor = const Color.fromARGB(255, 234, 195, 249);

var pricolor=Colors.grey;
 
var textfont=16;

var titlebold = 18;

String placeName ="city";

var boxshadow =      BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 7, // Spread radius of the shadow
                    blurRadius: 7, // Blur radius of the shadow
                    offset: const Offset(0, 3), // Offset of the shadow (horizontal, vertical)
                  );

var loadinganimat=LoadingAnimationWidget.newtonCradle(color: pricolor, size: 150);
var mobloadinganimat=LoadingAnimationWidget.newtonCradle(color: pricolor, size: 85);



class LocationFetch extends StatelessWidget {
  const LocationFetch({Key? key}) : super(key: key);

  static bool _hasNavigated = false;

  static Future<String?> fetchLocationData(BuildContext context) async {
    if (_hasNavigated) {
      return null; // Already navigated, no need to do it again
    }

    final location = Location();
    try {
      final LocationData locationData = await location.getLocation();
      final double? latitude = locationData.latitude;
      final double? longitude = locationData.longitude;

      final response = await http.get(Uri.parse('http://api.openweathermap.org/geo/1.0/reverse?lat=$latitude&lon=$longitude&limit=1&appid=6f722ea220333c8a0ca6dc586510c3a5'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        if (data.isNotEmpty) {
          final Map<String, dynamic> placeData = data[0];
           placeName = placeData['name'];
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Nav_bar(pageint: 0,)));
          print('Current Place Name: $placeName');
          print('$latitude  $longitude');
          _hasNavigated = true; // Set the flag to true to prevent further navigation
          return placeName; // Return the place name
        }
      }
    } catch (e) {
      print('Error fetching location and data: $e');
    }

    return null; // Return null if there's an error or no data found
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}






var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

class myDrawer extends StatelessWidget {
  final String titleone;
  final String titletwo;
  final String titlethree;
  final String Drawerimage;
  final pageone;
    final  pagetwo;



  const myDrawer({Key? key, required this.titleone, required this.titletwo, required this.titlethree, required this.Drawerimage, required this.pageone, required this.pagetwo}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      elevation: 1,
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset(Drawerimage,scale: 4,),
          const SizedBox(
            height: 5,
          ),
          Center(child: Text(titleone,style: const TextStyle(color: Colors.black,fontSize: 20),)),
          const SizedBox(
            height: 19,
          ),

          // Padding(
          //   padding: tilePadding,
          //   child: ListTile(
          //     leading: const Icon(Icons.cabin_outlined),
          //     title: Text(
          //       '$titleone',
          //       style: drawerTextColor,
          //     ),
          //     onTap: (){
          //       // Navigator.push(context, MaterialPageRoute(builder:(context)=>const dashboard_page()));
          //     }
          //   ),
          // ),
          
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.receipt_sharp),
              title: Text(
                titletwo,
                style: drawerTextColor,
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>pageone));
              }
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: const Icon(Icons.history_sharp),
              title: Text(
                titlethree,
                style: drawerTextColor,
              ),
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder:(context) => const profile_page(),));
              }
            ),
          ),
          
          
          Padding(
            padding: tilePadding,
            child: ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  'L O G O U T',
                  style: drawerTextColor,
                ),
//                 onTap: (){
//                   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('LOG OUT'),
//           content: const Text('Are you sure you want to Logout'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//  auth.signOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>
//               const login_page()
//             ,), (route) => false)
            
//             );              },
//               child: const Text('OK'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//            }
                    ),
          ),
        ],
      ),
    );
  }
}


/////////////////////// Text Form Field////////////////////////////////////


class StyledTextFormField extends StatelessWidget {
    final  TextEditingController fieldcontroller;
final String labletxt;
double fieldwidth;
   StyledTextFormField({super.key, required this.labletxt,required this.fieldwidth, required this.fieldcontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fieldwidth,
      padding: const EdgeInsets.all(16.0),
     
      child: TextFormField(
        controller: fieldcontroller,
        style: const TextStyle(
          color: Colors.black, // Text color

          // Text size
        ),
        decoration: InputDecoration(
          labelText: labletxt, // Replace with your custom label text
          labelStyle: const TextStyle(
            color: Colors.black, // Label text color
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0), // Border radius
            borderSide: const BorderSide(
              color: Colors.black, // Border color
              width: 2.0, // Border width
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black, // Focused border color
               // Focused border width
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red, // Error border color
              width: 2.0, // Error border width
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.red, // Focused error border color
              width: 2.0, // Focused error border width
            ),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }}






  //////////////////////Drop Down menu/////////////////
  class mydropDown extends StatelessWidget {
    final  TextEditingController txtcontroller;
    double dropwidth;
    final List<String> dropitem;
    final String hinttxt;
   mydropDown({super.key, required this.txtcontroller, required this.dropitem, required this.hinttxt,required this.dropwidth});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Container(
            width: dropwidth,
            height: 50,
            // padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          // width: 2,
          color: Colors.grey
        ),
        color: Colors.white,
        // boxShadow: [boxshadow],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: CustomDropdown.search(
          hintText: '$hinttxt',
          hintStyle:TextStyle(color:Colors.black,fontSize: 13),
          items: dropitem,
          controller: txtcontroller,
        ),
      ),
    );
  }
}
 

 ///////////////////////  Radio Button /////////////////////
 



  class my_radio extends StatefulWidget {
double radiowidth;
    final List<String> radiolist;
    String selctvalue;
   my_radio({super.key, required this.radiolist, required this.selctvalue,required this.radiowidth});

  @override
  State<my_radio> createState() => _my_radioState();
}

class _my_radioState extends State<my_radio> {

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return  Container(
      width: widget.radiowidth,
      height: 50,
      child:RadioGroup<String>.builder(
        direction: Axis.horizontal,
        groupValue:widget.selctvalue,
        horizontalAlignment: MainAxisAlignment.spaceAround,
        onChanged: (value) => setState(() {
         widget.selctvalue = value ?? '';
        }),
        items: widget.radiolist,
        textStyle: const TextStyle(
          fontSize: 11,
          color: Colors.black,
        ),
        itemBuilder: (item) => RadioButtonBuilder(
          item,
        ),
      ),
        );
  }
}

/////////////////////vertical radio///////////////////////////


  class my_vertical_radio extends StatefulWidget {
double radiowidth;
    final List<String> radiolist;
    String selctvalue;
   my_vertical_radio({super.key, required this.radiolist, required this.selctvalue,required this.radiowidth});

  @override
  State<my_vertical_radio> createState() => my_vertical_radioState();
}

class my_vertical_radioState extends State<my_vertical_radio> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;

    return  Container(
      width: widget.radiowidth,
      child:RadioGroup<String>.builder(
        direction: Axis.vertical,
        groupValue:widget.selctvalue,
        horizontalAlignment: MainAxisAlignment.spaceAround,
        onChanged: (value) => setState(() {
         widget.selctvalue = value ?? '';
        }),
        items: widget.radiolist,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
        itemBuilder: (item) => RadioButtonBuilder(
          item,
        ),
      ),
        );
  }
}







// class MyRadioButtons extends StatefulWidget {
//   final String
//   @override
//   _MyRadioButtonsState createState() => _MyRadioButtonsState();
// }

// class _MyRadioButtonsState extends State<MyRadioButtons> {
//   String? selectedpay; // Change the type to nullable String

//   void handleRadioValueChange(String? value) { // Change the type to nullable String
//     setState(() {
//       selectedpay = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//         var width = MediaQuery.of(context).size.width;

//     return  Container(
//       width: width*0.26,
//       child: Column(
//           children: <Widget>[
//             RadioListTile(
//               title: Text('Cash'),
//               value: 'Cash',
//               groupValue: selectedpay,
//               onChanged: handleRadioValueChange,
//             ),
//             RadioListTile(
//               title: Text('Card'),
//               value: 'Card',
//               groupValue: selectedpay,
//               onChanged: handleRadioValueChange,
//             ),
//             RadioListTile(
//               title: Text('UPI'),
//               value: 'UPI',
//               groupValue: selectedpay,
//               onChanged: handleRadioValueChange,
//             ),
//             RadioListTile(
//               title: Text('Credit'),
//               value: 'Credit',
//               groupValue: selectedpay,
//               onChanged: handleRadioValueChange,
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text('Selected Language: $selectedpay'),
//             ),
//           ],
//         ),
//     );
    
//   }
// }