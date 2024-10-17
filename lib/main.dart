import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'character_page.dart';
import 'moments_page.dart';
import 'about_page.dart';
import 'in_my_life_page.dart';
import 'contact_page.dart';

void main() {
  runApp(const ShogunApp());
}

class ShogunApp extends StatelessWidget {
  const ShogunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shogun App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shogun App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoverPage()),
                );
              },
              child: const Text('Portada'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CharacterPage()),
                );
              },
              child: const Text('Personajes'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MomentsPage()),
                );
              },
              child: const Text('Momentos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: const Text('Acerca de'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InMyLifePage()),
                );
              },
              child: const Text('En mi vida'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
              child: const Text('Contrátame'),
            ),
          ],
        ),
      ),
    );
  }
}

class CoverPage extends StatelessWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/introduccion.png',
      'assets/personajes.png',
      'assets/temas.png',
      'assets/novela.jpg',
      'assets/escenario.png',
    ];

    final List<String> captions = [
      'Sumérgete en el mundo feudal de Japón con Shogun (2024). Una historia de honor, poder y traición.',
      'Conoce a los personajes que dan vida a esta épica historia. Cada uno con su propia lucha por el honor.',
      'Explora los temas de la lealtad, la estrategia militar y el choque cultural en una era de cambio.',
      'Basada en la famosa novela histórica de James Clavell, Shogun cobra vida en esta nueva adaptación.',
      'Admira la belleza del Japón feudal y sus imponentes castillos, templos y campos de batalla.',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Portada')),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return Column(
              children: [
                Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                const SizedBox(height: 10),
                Text(
                  captions[index],
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
          options: CarouselOptions(
            height: 300,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
