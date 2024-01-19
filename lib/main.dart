import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( const XylophonApp());
}

void PlaySound(int SoundNumber){
final player = AudioPlayer();
 player.play(AssetSource('note_$SoundNumber.wav'));
}

Expanded BuildWidget(backgroundColor, SoundNumber){
return  Expanded(
 child: TextButton(
 style: TextButton.styleFrom(
backgroundColor: backgroundColor,
 ) ,
   onPressed: (){
PlaySound(SoundNumber);
},
  child: const Text("Jumabek Namazbekovich",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  color: Colors.white),
  ),
  ),
 );

}


class XylophonApp extends StatelessWidget {
  const XylophonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
       child: Container(
            
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
              children: [

 BuildWidget( Colors.red,1),               
  BuildWidget(Colors.green,2), 
    BuildWidget(Colors.grey,3), 
     BuildWidget(Colors.brown,4), 
      BuildWidget(Colors.purple,5), 
       BuildWidget(Colors.pink,6), 
        BuildWidget(Colors.blue,7), 
         BuildWidget(Colors.orange,1), 
   ],
  ),
  ),
   ),
  ),
    );
  }
}

