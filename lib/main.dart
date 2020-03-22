import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int mySoundNumber) {
    final player = AudioCache();
    player.play('note$mySoundNumber.wav');
  }

  Expanded buildKey({Color color, int mySoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(mySoundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, mySoundNumber: 1),
              buildKey(color: Colors.orange, mySoundNumber: 2),
              buildKey(color: Colors.yellow, mySoundNumber: 3),
              buildKey(color: Colors.green, mySoundNumber: 4),
              buildKey(color: Colors.teal, mySoundNumber: 5),
              buildKey(color: Colors.blueAccent, mySoundNumber: 6),
              buildKey(color: Colors.purple, mySoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

