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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(1);}, color: Colors.cyan[100],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(2);}, color: Colors.cyan[200],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(3);}, color: Colors.cyan[300],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(4);}, color: Colors.cyan[400],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(5);}, color: Colors.cyan[500],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(6);}, color: Colors.cyan[600],)),
              Expanded(child: FlatButton(onPressed: () {xylophoneSound(7);}, color: Colors.cyan[700],)),
            ],
          )
          ),
        ),
    );
  }

  void xylophoneSound(int i) => player.play("note"+i.toString()+".wav");
}
