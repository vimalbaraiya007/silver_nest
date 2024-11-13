import 'package:flutter/material.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maintenance Records'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Maintenance Paid - 201'),
            subtitle: Text('Paid on 1st Sept 2024'),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Maintenance Due - 202'),
            subtitle: Text('Due by 5th Sept 2024'),
          ),
          // Add more records here
        ],
      ),
    );
  }
}
