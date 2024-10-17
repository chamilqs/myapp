import 'package:flutter/material.dart';

class MomentsPage extends StatelessWidget {
  final List<Map<String, String>> moments = [
    {
      'title': 'Batalla en la playa',
      'image': 'assets/batalla.png',
      'description':
          'Una batalla épica donde los samuráis luchan por el honor.',
      'videoUrl':
          'https://www.youtube.com/watch?v=WsONPIdluYU&pp=ygUgYmF0YWxsYSBlbiBsYSBwbGF5YSBzaG9ndW4gc2VyaWU%3D'
    },
    {
      'title': 'El encuentro con Toranaga',
      'image': 'assets/toranaga_encuentro.jpg',
      'description':
          'John Blackthorne se encuentra cara a cara con el poderoso Toranaga.',
      'videoUrl':
          'https://www.youtube.com/watch?v=BoFed8eQEjE&pp=ygVCSm9obiBCbGFja3Rob3JuZSBzZSBlbmN1ZW50cmEgY2FyYSBhIGNhcmEgY29uIGVsIHBvZGVyb3NvIFRvcmFuYWdh'
    },
    {
      'title': 'La traición de Mariko',
      'image': 'assets/mariko_traicion.jpg',
      'description':
          'Mariko toma una decisión difícil que cambia el curso de la historia.',
      'videoUrl':
          'https://www.youtube.com/watch?v=J_3bU4904DI&pp=ygUXbWFyaWtvIGJldHJheXMgdG9yYW5hZ2E%3D'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Momentos')),
      body: ListView.builder(
        itemCount: moments.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(moments[index]['image']!),
            title: Text(moments[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MomentDetailPage(
                    title: moments[index]['title']!,
                    image: moments[index]['image']!,
                    description: moments[index]['description']!,
                    videoUrl: moments[index]['videoUrl']!,
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

class MomentDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String videoUrl;

  const MomentDetailPage({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.videoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(description, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implementa la lógica para reproducir el video aquí
            },
            child: const Text('Ver Video Relacionado'),
          ),
        ],
      ),
    );
  }
}
