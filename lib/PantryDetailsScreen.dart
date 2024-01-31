import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantryDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantry Details'),
      ),
      body: Center(
        child: Text('Details about the Pantry'),
      ),
    );
  }
}