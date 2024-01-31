import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EquipmentsDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipment Details'),
      ),
      body: Center(
        child: Text('Details about the Equipment'),
      ),
    );
  }
}