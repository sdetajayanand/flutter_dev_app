import 'package:first_project/main.dart';
import 'package:first_project/_logOut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class logOut extends State<Starter>{

  @override
  Widget build(BuildContext context) {
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blueAccent[400],
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 20.0,),
            child: Row(
              children: <Widget>[
                Image.asset('assets/tvlogo.png',
                      width: 60.0,
                      height: 40.0,
                      fit: BoxFit.fill,
                ),
                Text('TestVagrant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35, top: 130),
            child: Text(
              'Welcome\nBack',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, left: 35.0, right: 35.0),
              child: Column(
                children: [
                  TextField(
                    controller: emailField,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[700],
                      hintText: 'EMAIL',
                      //filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  TextField(
                    controller: passwordField,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[700],
                        //hintText: 'PASSWORD',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey[700],
                        child: IconButton(
                          onPressed: () {
                            if(emailField.text == 'sample@gmail.com' && passwordField.text == 'pass123')
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> TvHome()));
                              }
                          },
                          icon: Icon(Icons.arrow_forward),
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: () {}, child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 4.0,
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

