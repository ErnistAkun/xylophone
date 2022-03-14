import 'package:audioplayers/audioplayers.dart';

class AudioServices {
  AudioCache player = AudioCache();

  Future<void> playNote(String number) async {
    await player.play('note$number.wav');
  }

  Future<void> playNote2(String number) async {
    await player.play('note$number.wav');
  }
}

final AudioServices audioServices = AudioServices();
