/*import 'package:flutter/material.dart';

class MaintenanceRecordScreen extends StatelessWidget {
  final List<Map<String, String>> records = [
    {"date": "01/09/2024", "amount": "\$100", "status": "Paid"},
    {"date": "01/08/2024", "amount": "\$100", "status": "Pending"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance Records'),
      ),
      body: ListView.builder(
        itemCount: records.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.payment),
            title: Text("Date: ${records[index]['date']}"),
            subtitle: Text("Amount: ${records[index]['amount']}"),
            trailing: Text(records[index]['status']!),
          );
        },
      ),
    );
  }
}*/
