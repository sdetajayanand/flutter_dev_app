//import 'package:first_project/logOut.dart';
import 'package:first_project/pages/geoLocation.dart';
import 'package:first_project/pages/logOut.dart';
import 'package:first_project/pages/webViewScreen.dart';
import 'package:first_project/pages/logOut.dart';
import 'package:flutter/material.dart';

class navBar extends StatelessWidget{
  const navBar({super.key});

  @override
  Widget build(context){
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,        //listview is used to render large no of children because it is scrollable and column is fixed and renders all its children at once
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('xyzzz'),
            accountEmail: const Text('xyzz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/man.png', width: 90,height: 90,fit: BoxFit.fill,)),
            ),
            decoration: const BoxDecoration(
              color: Colors.pinkAccent,
            ),
            ),
          ListTile(
            leading: const Icon(Icons.settings),     //dark mode and history
            title: const Text('Settings'),
            onTap: (){},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Requests'),
            onTap: (){},
            trailing: ClipOval(
              child: Container(color: Colors.red,width: 20,height: 20,  //add text inside container, hence Text() is a child inside container
              child: const Text('5', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 12),),),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.my_location),
            title: const Text('GeoLocation'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const GeoLocation()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('WebView(Flutter Documentation)'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const WebViewContainer()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Starter()));
            },
            
          )
        ],
      ),
    );
  }
}