import 'package:flutter/material.dart';
//import 'notification_screen.dart'; // Import the notification screen

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.purple[700], // Set AppBar to a purple shade
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors
                    .purple[300], // Drawer header with a purple background
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Flat 201',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Vinod Baraiya',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.report_problem, color: Colors.purple[700]),
              title: const Text('File a Complaint'),
              onTap: () {
                Navigator.pushNamed(context, '/complaints');
              },
            ),
            ListTile(
              leading: Icon(Icons.build, color: Colors.purple[700]),
              title: const Text('View Maintenance Records'),
              onTap: () {
                Navigator.pushNamed(context, '/maintenance');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              const SizedBox(height: 20),
              Text(
                'Flat 201',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Vinod Baraiya',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/complaints');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[500], // Purple button color
                ),
                child: const Text(
                  'File a Complaint',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/maintenance');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[500],
                ),
                child: const Text(
                  'View Maintenance Records',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
