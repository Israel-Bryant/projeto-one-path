import 'package:flutter/material.dart';
import 'driver_page.dart';
import 'passenger_page.dart';

void main() {
  runApp(const OnePathApp());
}

class OnePathApp extends StatelessWidget {
  const OnePathApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Path',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildUserBox(String title, IconData icon, VoidCallback onPressed) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.indigo, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.indigo,
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'Bem-vindo ao One Path!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                _buildUserBox(
                  'Passageiro',
                  Icons.person,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PassengerPage()),
                    );
                    
                  },
                ),
                _buildUserBox(
                  'Motorista',
                  Icons.drive_eta,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DriverPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
