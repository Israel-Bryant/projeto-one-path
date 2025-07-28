import 'package:flutter/material.dart';

class PassengerPage extends StatelessWidget {
  const PassengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Área do Passageiro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bem-vindo, Passageiro!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Aqui você poderá solicitar viagens.'),
          ],
        ),
      ),
    );
  }
}
