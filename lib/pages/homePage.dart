import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EquipmentsDetailsPage.dart';
import 'PantryDetailsScreen.dart';
import 'eventsDetailPage.dart';
import 'logOut.dart';

String userName = "Hey Ajay";

class TvHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 50.0, 20.0, 20.0),
            child:  Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/tvlogo.png')),
                    Text('TestVagrant    |   $userName   |  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigate to PantryDetailsScreen when clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Starter(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PantryDetailsScreen(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/pantry.jpg',
                        height: 150.0,
                        width: 300.0,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: 20.0,
                        width: 300.0,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'PANTRY',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EquipmentsDetailsPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/tabletennis.jpg',
                        height: 150.0,
                        width: 300.0,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: 20.0,
                        width: 300.0,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'EQUIPMENTS',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => eventsDetailPage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/events.jpg',
                        height: 150.0,
                        width: 300.0,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: 20.0,
                        width: 300.0,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'EVENTS',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

