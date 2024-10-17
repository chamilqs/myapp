import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de Shogun')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shogun (2024)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Temporadas: 1', style: TextStyle(fontSize: 18)),
            Text('Creador: Justin Marks', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(
              'Shogun es una serie épica basada en la novela histórica de James Clavell, '
              'que narra el viaje de un marinero inglés en el Japón feudal, involucrado '
              'en la política y la cultura de los samuráis.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
