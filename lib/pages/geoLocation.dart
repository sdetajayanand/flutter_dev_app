
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class GeoLocation extends StatelessWidget{

//   void getCurrentGeoLocation() async {     //returns a Future
//     LocationPermission permission = await Geolocator.checkPermission();
//     if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
//       print('Permission not given');
//     }
//     else{
//       Position location = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
//       print('Latitude: '+location.latitude.toString());
//       print('Longitude '+ location.longitude.toString());
//     }
//   }


//   @override
//   Widget build(context){
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             getCurrentGeoLocation();
//           },
//           child: const Text('Get Your Current Locatiin')),
//       ),
//     );
//   }
  
// }