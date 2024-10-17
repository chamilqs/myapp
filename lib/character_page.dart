import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  final List<Map<String, String>> characters = [
    {
      'name': 'John Blackthorne',
      'image': 'assets/blackthorne.png',
      'details': 'Un marinero inglés que naufraga en Japón.'
    },
    {
      'name': 'Toranaga',
      'image': 'assets/toranaga.png',
      'details': 'Un daimyo poderoso en Japón.'
    },
    {
      'name': 'Mariko',
      'image': 'assets/mariko.png',
      'details': 'Una mujer noble y guerrera.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personajes')),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(characters[index]['image']!),
            title: Text(characters[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailPage(
                    name: characters[index]['name']!,
                    image: characters[index]['image']!,
                    details: characters[index]['details']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CharacterDetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String details;

  const CharacterDetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(details, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
