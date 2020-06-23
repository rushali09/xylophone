import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart'; //add local files

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ //()==> specifying the number of the track
      final player = AudioCache();
      player.play('note$soundNumber.wav');
      
  
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
                  Expanded(
                      child: FlatButton(
                       color: Colors.red,
                        onPressed: (){
                              playSound(1);
                        }, 
                         child: Text(''),
                      ) ,
                ),
           

                  Expanded(
                      child: FlatButton(
                       color: Colors.yellow,
                        onPressed: (){
                              playSound(2);
                        }, 
                         child: Text(''),
                      ) ,
                ),


                    Expanded(
                     child: FlatButton(
                       color: Colors.pink[100],
                        onPressed: (){
                              playSound(3);
                        }, 
                         child: Text(''),
                      ) ,
                ),
                      
                    Expanded(
                     child: FlatButton(
                       color: Colors.blue,
                        onPressed: (){
                              playSound(4);
                        }, 
                         child: Text(''),
                      ) ,
                ),
                    Expanded(
                     child: FlatButton(
                       color: Colors.orange,
                        onPressed: (){
                              playSound(5);
                        }, 
                         child: Text(''),
                      ) ,
                ),
                    Expanded(
                     child: FlatButton(
                       color: Colors.purple,
                        onPressed: (){
                              playSound(6);
                        }, 
                         child: Text(''),
                      ) ,
                ),
                      Expanded(
                     child: FlatButton(
                       color: Colors.green,
                        onPressed: (){
                              playSound(7);
                        }, 
                         child: Text(''),
                      ) ,
                ),
              ],
            ),
          ),
        ),
      );
    }
                
                 
}
