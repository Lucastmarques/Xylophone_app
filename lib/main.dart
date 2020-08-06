import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buttonCreator({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
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
              buttonCreator(color: Colors.red, num: 1),
              buttonCreator(color: Colors.orange, num: 2),
              buttonCreator(color: Colors.yellow, num: 3),
              buttonCreator(color: Colors.green, num: 4),
              buttonCreator(color: Colors.teal, num: 5),
              buttonCreator(color: Colors.blue, num: 6),
              buttonCreator(color: Colors.deepPurple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
