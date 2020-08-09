import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(MaterialColor color, int noteNum) {
    final player = AudioCache();
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$noteNum.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.indigo, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.orange, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.teal, 6),
              buildKey(Colors.cyan, 7),
            ],
          ),
        ),
      ),
    );
  }
}
