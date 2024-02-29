import 'package:flutter/material.dart';

class eventsDetailPage extends StatelessWidget {
  const eventsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events Details'),
      ),
      body: const Center(
        child: Text('Details about the Events'),
      ),
    );
  }
}