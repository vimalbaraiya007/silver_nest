import 'package:flutter/material.dart';
import 'package:silver_nest/screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/notification_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/complaint_screen.dart';
import 'screens/maintenance_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ApartmentApp());
}

class ApartmentApp extends StatelessWidget {
  const ApartmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartment Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Updated with the new widget
      routes: {
        '/notifications': (context) => const NotificationScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/complaints': (context) => const ComplaintScreen(),
        '/maintenance': (context) => const MaintenanceScreen(),
      },
    );
  }
}

// Wrap your LoginScreen widget in a SizedBox with padding, height, and shadow
class LoginScreenWithBox extends StatelessWidget {
  const LoginScreenWithBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 141, 106, 106), // Background for better contrast with shadow
      body: Center(
        child: SizedBox(
          width: 350, // Width of the box
          height: 500, // Height of the box
          child: Padding(
            padding:
                const EdgeInsets.all(16.0), // Padding around the box content
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    99, 57, 2, 145), // Transparent box color
                borderRadius: BorderRadius.circular(10.0), // Rounded corners
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26, // Shadow color
                    blurRadius: 10.0, // Shadow blur
                    offset: Offset(0, 4), // Offset of the shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 50, // Adjust the position of the text box
                    left: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            Colors.blueAccent, // Background color behind text
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Login', // Your login text
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white, // Text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Positioned.fill(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 120), // Space below the text
                      child: LoginScreen(), // Your login screen content
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
