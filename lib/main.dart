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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                child: TextButton(
              child: Container(color: Colors.red),
              onPressed: () {
                playSound(1);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.orange),
              onPressed: () {
                playSound(2);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.yellow),
              onPressed: () {
                playSound(3);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.green),
              onPressed: () {
                playSound(4);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.teal),
              onPressed: () {
                playSound(5);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.blue),
              onPressed: () {
                playSound(6);
              },
            )),
            Expanded(
                child: TextButton(
              child: Container(color: Colors.purple),
              onPressed: () {
                playSound(7);
              },
            )),
          ],
        )),
      ),
    );
  }
}
