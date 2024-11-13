import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Water Pump Reminder'),
            subtitle: Text('2 PM - Turn on water pump'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Main Gate Reminder'),
            subtitle: Text('7 PM - Lock main gate'),
          ),
          // Add more notifications here
        ],
      ),
    );
  }
}
