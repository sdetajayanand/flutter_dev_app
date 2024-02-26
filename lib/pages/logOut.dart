import 'package:first_project/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Starter extends StatefulWidget {
  const Starter({super.key});
  @override
  State<Starter> createState(){
    return _logOut();
  }
}

class _logOut extends State<Starter>{

  @override
  Widget build(BuildContext context) {
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();
    String displayText = '';
    return Scaffold(
      //backgroundColor: Colors.blueAccent[400],
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.greenAccent, Color.fromARGB(255, 85, 144, 245)]),
          ),
          child: Stack(
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
                  'Welcome Back',
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
                          const Text('SIGN IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {
                                if(emailField.text == 'sample@gmail.com' && passwordField.text == 'pass123')
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const TvHome()));
                                  }
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
        ),
      ),
    );
  }
}

