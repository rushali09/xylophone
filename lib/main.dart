import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart'; //add local files

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ //()==> specifying the number of the track
      final player = AudioCache();
      player.play('note$soundNumber.wav');
      }
  Expanded buildKey({Color color, int soundNumber}){
        return Expanded(
          child: FlatButton(
            onPressed: (){
              playSound(soundNumber);
            }, 
            child: Text('Click ME'),
            ) ,
        );
  }

  



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color:Colors.red, soundNumber:1),
                buildKey(color:Colors.yellow, soundNumber:2),
                buildKey(color:Colors.blue, soundNumber:3),
                buildKey(color:Colors.pink, soundNumber:4),
                buildKey(color:Colors.green, soundNumber:5),
                buildKey(color:Colors.purple, soundNumber:6),
                buildKey(color:Colors.teal, soundNumber:7),
                              ],
                            ),
                        ),
                      ),
                    );
                  }
                
                 
}
