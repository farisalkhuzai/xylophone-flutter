import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(Color c1, int soundNum){
   return Expanded(
      child: TextButton(onPressed: (){
        playSound(soundNum);
      },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(c1),
      ),
    )
   );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
