import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Some Game Sounds',
          style: TextStyle(
            fontFamily: 'GrapeNuts',
            fontSize: 30.0,
          ),
        ),
      ),
      body: Xylophone2(),
    ),
  ));
}

class Xylophone2 extends StatelessWidget {
  const Xylophone2({Key? key}) : super(key: key);

  void playSound({required int soundNumber}) async {
    final player = AudioCache();
    player.play('$soundNumber.opus');
  }

  Expanded buildImageButton({required int imageNumber, required int soundNumber}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        child: Ink.image(
          image: AssetImage('images/$imageNumber.jpg'),
          fit: BoxFit.cover,
          child: InkWell(
              enableFeedback: false,
              onTap: () {
                playSound(soundNumber: soundNumber);
              }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildImageButton(imageNumber: 1, soundNumber: 1),
        buildImageButton(imageNumber: 2, soundNumber: 2),
        buildImageButton(imageNumber: 3, soundNumber: 3),
        buildImageButton(imageNumber: 4, soundNumber: 4),
        buildImageButton(imageNumber: 5, soundNumber: 5),
        buildImageButton(imageNumber: 6, soundNumber: 6),
        buildImageButton(imageNumber: 7, soundNumber: 7),
      ],
    );
  }
}
