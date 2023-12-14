import 'package:flutter/material.dart';

import 'package:fms_web/admin/pages/username/admin_home.dart';
import 'package:fms_web/user/utils/Navigation/nav_bar.dart';
import '../../../user/user_login/user_login_screen.dart';
import '../../pages/username/home management/des_admin_home.dart';

class Admin_login_form extends StatefulWidget {
  const Admin_login_form({
    Key? key,
  }) : super(key: key);

  @override
  State<Admin_login_form> createState() => _Admin_login_formState();
}

class _Admin_login_formState extends State<Admin_login_form> {
  bool isEmailValid = true;
  bool isPasswordVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  bool isPasswordValid() {
    // Add your password validation logic here
    return !isPasswordVisible  == 'admin123';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextField(
            cursorColor: Colors.blue,
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Admin Email',
              hintText: 'Admin Email',
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 20.0,
              ),
              errorText: isEmailValid ? null : 'Enter a valid email address',
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
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              setState(() {
                isEmailValid = value.contains('@');
              });
            },
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: TextField(
              controller: passwordController,
              cursorColor: Colors.black,
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                labelStyle: const TextStyle(color: Colors.black),
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {

                if (emailController.text == 'admin123@gmail.com' && passwordController.text =='123456'
                    ) {
                  // Navigate to the admin home page
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Des_admin_home()));
                } else {
                  // Show a dialog for invalid login credentials
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Invalid Login'),
                        content:
                        Text('Invalid login credentials for admin.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Close the dialog
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },

              child: Text("sign in".toUpperCase()),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign in as a user'),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => User_login_screen()));
                },
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
                //         (Set<MaterialState> states) {
                //       if (states.contains(MaterialState.pressed)) {
                //         return Colors.black; // Use black for pressed state
                //       }
                //       return Colors.white; // Use white for default state
                //     },
                //   ),
                // ),
                child: Text('CLICK HERE'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
