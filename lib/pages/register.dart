import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../classes/Users.dart';
import 'homePage.dart';
import 'logOut.dart';

class register extends StatefulWidget {
  const register ({super.key});  //accept total as an argument
  @override
  State<register> createState() {
    return _registerDetail();
  }
}

class _registerDetail extends State<register> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameField = TextEditingController();
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();
    String displayText = '';
    return Scaffold(
      backgroundColor: Colors.blueAccent[400],
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0,),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Image.asset('assets/tvlogo.png',
                    width: 60.0,
                    height: 40.0,
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20,),
                  child: Text('TestVagrant',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 50, top: 130),
            child: const Text(
              'Welcome To TestVagrant',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(50.0, 300.0, 35.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nameField,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'NAME',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 30.0,),
                  TextField(
                    controller: emailField,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'EMAIL',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 30.0,),
                  TextField(
                    controller: passwordField,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'PASSWORD',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  const SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigate to PantryDetailsScreen when clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Starter(),
                            ),
                          );
                        },
                        child: const Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Users.registerUser(nameField.text, emailField.text, passwordField.text);
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Starter()));
                            },
                            icon: const Icon(Icons.arrow_forward),
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: () {
                        Fluttertoast.showToast(
                            msg: "We can't do anything if you forgot Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }, child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2.0,
                        ),
                      ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
