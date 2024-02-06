import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class eventsDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events Details'),
      ),
      body: const Center(
        child: Text('Details about the Events'),
      ),
    );
  }
}