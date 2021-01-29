import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded tile({Color color, int soundNo}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNo);
        },
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            tile(color: Colors.red, soundNo: 1),
            tile(color: Colors.green, soundNo: 2),
            tile(color: Colors.orange, soundNo: 3),
            tile(color: Colors.purple, soundNo: 4),
            tile(color: Colors.blue, soundNo: 5),
            tile(color: Colors.greenAccent, soundNo: 6),
            tile(color: Colors.blueGrey, soundNo: 7),
          ],
        ),
      ),
    );
  }
}
