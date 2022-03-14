import 'package:xylophone/data/services/audio_services.dart';

class AudioRepository {
  Future<void> playNote(String number) async {
    await audioServices.playNote2(number);
  }
}

final AudioRepository audioRepository = AudioRepository();
