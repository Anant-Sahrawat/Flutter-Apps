import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color colour, int soundNumber}) => Expanded(
        child: FlatButton(
          color: colour,
          onPressed: () {
            final player = AudioCache();
            player.play('note$soundNumber.wav');
          },
          child: Container(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(colour: Colors.deepPurple.shade800, soundNumber: 1),
              buildKey(colour: Colors.indigo.shade500, soundNumber: 2),
              buildKey(colour: Colors.blue.shade300, soundNumber: 3),
              buildKey(colour: Colors.green, soundNumber: 4),
              buildKey(colour: Colors.yellow, soundNumber: 5),
              buildKey(colour: Colors.orange, soundNumber: 6),
              buildKey(colour: Colors.redAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
