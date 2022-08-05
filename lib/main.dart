import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  final player = AudioPlayer();
  void sound_player(sound_num) {
    player.seek(Duration(milliseconds: 0));
    player.play(AssetSource('note$sound_num.wav'));
  }

  Expanded buildKey(sound_num, Color colors) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          sound_player(sound_num);
        },
        style: ButtonStyle(
          enableFeedback: false,
          backgroundColor: MaterialStateProperty.all<Color>(colors),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.blue),
                buildKey(6, Colors.purple),
                buildKey(7, Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
