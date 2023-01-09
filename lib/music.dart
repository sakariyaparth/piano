import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicView extends StatefulWidget {
  const MusicView({super.key});

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  final List music = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav',
  ];
  final List color = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.blue,
    Colors.purple,
    Colors.pink
  ];
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: color.length,
      itemBuilder: (context, index) {
        return InkWell(
          child: Container(
            width: double.infinity,
            height: 112 ,
            decoration: BoxDecoration(color: color[index]),
          ),
          onTap: () {
            final player = AudioPlayer();
            setState(() {
              player.play(AssetSource(music[index]));
            });
          },
        );
      },
    ));
  }
}
