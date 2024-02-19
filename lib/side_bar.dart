import 'package:first_project/pages/geoLocation.dart';
import 'package:flutter/material.dart';

class navBar extends StatelessWidget{

  @override
  Widget build(context){
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,        //listview is used to render large no of children because it is scrollable and column is fixed and renders all its children at once
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('xyzzz'),
            accountEmail: Text('xyzz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/man.png', width: 90,height: 90,fit: BoxFit.fill,)),
            ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
            ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Requests'),
            onTap: (){},
            trailing: ClipOval(
              child: Container(color: Colors.red,width: 20,height: 20,  //add text inside container, hence Text() is a child inside container
              child: Text('5', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 12),),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.my_location),
            title: Text('GeoLocation'),
            onTap: () {
              //GeoLocation();
            },
          )
        ],
      ),
    );
  }
}