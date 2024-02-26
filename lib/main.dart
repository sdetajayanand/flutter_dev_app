
import 'package:first_project/EquipmentsDetailsPage.dart';
import 'package:first_project/eventsDetailPage.dart';
import 'package:first_project/_logOut.dart';
import 'package:first_project/pages/PantryDetailsScreen.dart';
import 'package:flutter/material.dart';

String userName = "Hey Ajay";

// sample@gmail.com
// pass123
var kDarkColorScheme = ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: const Color.fromARGB(255, 9, 99, 125));

void main() => runApp(MaterialApp(

  darkTheme: ThemeData.dark().copyWith(
    colorScheme: kDarkColorScheme,
    appBarTheme: AppBarTheme(
      backgroundColor: kDarkColorScheme.onPrimaryContainer,
      foregroundColor: kDarkColorScheme.primaryContainer,
    ),
    cardTheme: const CardTheme().copyWith(
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorScheme.primaryContainer,
      foregroundColor: kDarkColorScheme.onPrimaryContainer,
    )),
    textTheme: TextTheme().copyWith(
      
    )
  ),

  debugShowCheckedModeBanner: false,
  home: const Starter()
));


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
                    key: const Key('logoutIcon'),
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
                key: const Key('PantryKey'),
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
              const SizedBox(height: 40),
              InkWell(
                key: const Key('EquipmentKey'),
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
                key: const Key('EventsKey'),
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

