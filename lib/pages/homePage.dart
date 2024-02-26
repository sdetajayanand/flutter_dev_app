import 'package:first_project/EquipmentsDetailsPage.dart';
import 'package:first_project/pages/PantryDetailsScreen.dart';
import 'package:first_project/eventsDetailPage.dart';
import 'package:flutter/material.dart';

// import 'EquipmentsDetailsPage.dart';
// import 'package:first_project/pages/ev';
import 'logOut.dart';

String userName = "Hey Ajay";

class TvHome extends StatelessWidget {
  const TvHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 50.0, 20.0, 20.0),
            child:  Column(
              children: <Widget>[
                const SizedBox(height: 20.0,),
                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/tvlogo.png')),
                    Text('TestVagrant    |   $userName   |  ',
                      style: const TextStyle(
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
                            builder: (context) => const Starter(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PantryDetailsScreen(),
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
                        child: const Center(
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
                const SizedBox(height: 40.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EquipmentsDetailsPage(),
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
                        child: const Center(
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
                const SizedBox(height: 40.0,),
                InkWell(
                  onTap: () {
                    // Navigate to PantryDetailsScreen when clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const eventsDetailPage(),
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
                        child: const Center(
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

