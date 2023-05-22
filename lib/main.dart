import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int a) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$a.wav"),
    );
  }

  Expanded buildKey({required int key, required Color color}) {
    return Expanded(
        child: TextButton(
      child: Container(color: color),
      onPressed: () {
        playSound(key);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            buildKey(key: 1, color: Colors.red),
            buildKey(key: 2, color: Colors.orange),
            buildKey(key: 3, color: Colors.yellow),
            buildKey(key: 4, color: Colors.green),
            buildKey(key: 5, color: Colors.teal),
            buildKey(key: 6, color: Colors.blue),
            buildKey(key: 7, color: Colors.purple),
          ],
        )),
      ),
    );
  }
}
