
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocation extends StatefulWidget{
  const GeoLocation({super.key});
  @override
  State<GeoLocation> createState(){
    return _GeoLocation();
  }
}  
class _GeoLocation extends State<GeoLocation>{
  Position? _position;
  // late String latitude;
  // late String longitude;

  void getCurrentGeoLocation() async {     //returns a Future
    Position location = await determinePosition();
    setState(() {
      _position = location;
      // latitude = location.latitude.toString();
      // longitude = location.longitude.toString();
    });
    // print('Latitude: '+location.latitude.toString());
    // print('Longitude '+ location.longitude.toString());
  }

  Future<Position> determinePosition() async {

    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
      //print('Permission not given');
      permission = await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  }

  @override
  Widget build(context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                getCurrentGeoLocation;
                //_showCoordinates = true;
              },
              child: const Text('Get Your Current Location')),
              _position!=null ? Text(_position.toString()) : Text('No Data'),
          ],
        ),
      ),
    );
  }
  
}