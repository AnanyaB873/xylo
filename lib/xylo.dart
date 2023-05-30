import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class xylo extends StatefulWidget {
  const xylo({Key? key}) : super(key: key);

  @override
  State<xylo> createState() => _xyloState();
}

class _xyloState extends State<xylo> {
  void playSound(int soundNumber){
final player=AudioPlayer();
player.play(AssetSource('xylo/m$soundNumber.wav'),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xylophone'),) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          buildExpanded(Colors.white70,1),
          buildExpanded(Colors.red,2),
          buildExpanded(Colors.green,3),
          buildExpanded(Colors.greenAccent,4),
          buildExpanded(Colors.pinkAccent,5),
          buildExpanded(Colors.deepPurple,6),
          buildExpanded(Colors.orangeAccent,7),
        ],

              ),
          );
    


  }

  Expanded buildExpanded(Color Colour) => Expanded(child: Container(color: Colour,
    child: TextButton(onPressed:(){playSound(sound);},child: Text('audio'),
    ),
  )
  );
}
