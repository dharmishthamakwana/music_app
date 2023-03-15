import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class MusicProvider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;

  void initMusic() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Audio("assets/music/ke.mp3"),
        autoStart: false, showNotification: true,);
  }

  Future<void> startMusic() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> pauseMusic() async {
    await assetsAudioPlayer!.pause();
  }
  void muteAudio() {

  }
}
