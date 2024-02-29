import 'package:flutter/material.dart';

class EquipmentsDetailsPage extends StatelessWidget {
  const EquipmentsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment Details'),
      ),
      body: const Center(
        child: Text('Details about the Equipment'),
      ),
    );
  }
}