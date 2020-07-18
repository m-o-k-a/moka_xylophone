import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {player.play("note1.wav");},
              child: Text("Note 1"),
            ),
          ),
        ),
      ),
    );
  }
}
