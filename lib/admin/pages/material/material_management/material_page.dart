import 'package:flutter/material.dart';

class Material_Page extends StatefulWidget {
  const Material_Page({Key? key}) : super(key: key);

  @override
  State<Material_Page> createState() => _Material_PageState();
}

class _Material_PageState extends State<Material_Page> {
  TextEditingController MaterialName = TextEditingController();
  TextEditingController Quantity = TextEditingController();
  TextEditingController MaterialCost = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Material Page',
            style: TextStyle(color: Colors.black,)
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
                child: SizedBox(width: 700,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: MaterialName,
                              decoration: InputDecoration(
                                labelText: 'Material Name', // Corrected label text
                                hintText: 'Material Name',
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
                            SizedBox(height: 20),
                            TextFormField(
                              controller: Quantity,
                              decoration: InputDecoration(
                                labelText: 'Quantity', // Corrected label text
                                hintText: 'Quantity',
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
                            SizedBox(height: 20),
                            TextFormField(
                              controller: MaterialCost,
                              decoration: InputDecoration(
                                labelText: 'Material Cost', // Corrected label text
                                hintText: 'Material Cost',
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
                                prefixIcon: Icon(
                                  Icons.money_off, // Change this to the icon you want
                                  color: Colors.black,
                              ),

                            ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: ElevatedButton(
                                child: Text('add',style: TextStyle(color: Colors.black),
                                ),
                                onPressed: (){

                                },
                              ),
                            )// Corrected the position of SizedBox
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

