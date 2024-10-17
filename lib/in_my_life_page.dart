import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InMyLifePage extends StatefulWidget {
  @override
  _InMyLifePageState createState() => _InMyLifePageState();
}

class _InMyLifePageState extends State<InMyLifePage> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    const String videoUrl = 'https://youtu.be/UqcBgZfpbOg';
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('En mi vida')),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _youtubeController,
          showVideoProgressIndicator: true,
        ),
        builder: (context, player) {
          return Center(
            child: player,
          );
        },
      ),
    );
  }
}
