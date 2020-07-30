import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(AnimalApp());
}

class AnimalApp extends StatelessWidget {
  Expanded getObject(String name, String soundName) {
    return Expanded(
      child: FlatButton(
        color: Colors.blue,
        onPressed: () {
          final player = AudioCache();
          player.play('$soundName');
          print('$soundName');
        },
        child: Image(
          image: AssetImage('images/$name.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Wild Animal Sound'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Tap on animal to hear sound',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  getObject('bear', 'bear.wav'),
                  getObject('tiger', 'tiger.wav'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  getObject('hippo', 'hippo.wav'),
                  getObject('lion', 'lion.m4a'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  getObject('elephant', 'elephant.wav'),
                  getObject('rino', 'bear.wav'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
