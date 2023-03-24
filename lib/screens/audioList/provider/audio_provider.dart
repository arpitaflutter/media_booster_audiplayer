import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class audio_provider extends ChangeNotifier
{

  List<Audio> audioList = [
    Audio("assets/audios/bol do na zara.mp3"),
    Audio("assets/audios/dheere dheere.mp3"),
    Audio("assets/audios/dil me ho tum.mp3"),
    Audio("assets/audios/duniya.mp3"),
    Audio("assets/audios/enni sauni.mp3"),
    Audio("assets/audios/ghoonghroo.mp3"),
    Audio("assets/audios/Jeena Jeena.mp3"),
    Audio("assets/audios/jeene laga hoon.mp3"),
    Audio("assets/audios/kaun tujhe.mp3"),
    Audio("assets/audios/kesariya.mp3"),
    Audio("assets/audios/mummy nu pasand.mp3"),
    Audio("assets/audios/naagin.mp3"),
    Audio("assets/audios/pal pal dil ke pass.mp3"),
    Audio("assets/audios/tera Ban jaunga.mp3"),
    Audio("assets/audios/yaad piya ki.mp3"),
    Audio("assets/audios/yaara.mp3"),
  ];

  List name = [
    "Bol do na zara",
    "Dheere dheere",
    "Dil me ho tum",
    "Duniya",
    "Enni sauni",
    "Ghoonghroo",
    "Jeene jeene",
    "Jeene laga hoon",
    "Kaun tujhe",
    "Kesariya",
    "Mummy nu pasand",
    "Naagin",
    "Pal pal dil ke pass",
    "Tera ban jaunga",
    "Yaad piya ki",
    "Yaara"
  ];

  List images = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg",
    "assets/images/11.jpeg",
    "assets/images/12.jpeg",
    "assets/images/13.jpeg",
    "assets/images/14.jpeg",
    "assets/images/15.jpeg",
    "assets/images/16.jpeg",
  ];

  AssetsAudioPlayer? assetsAudioPlayer;
  Duration totalDuration = Duration(seconds: 0);
  bool ismute = false;

  void initAudio()
  {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Playlist(audios: audioList),
        autoStart: false,
        showNotification: true
    );

    totalDurationAudio();
  }

  void totalDurationAudio()
  {
    assetsAudioPlayer!.current.listen((event) {
      totalDuration = event!.audio.duration;
      notifyListeners();
    });
  }

  Future<void> startAudio()
  async {
    await assetsAudioPlayer!.play();
    notifyListeners();
  }

  Future<void> stopAudio()
  async {
    await assetsAudioPlayer!.pause();
    notifyListeners();
  }

  Future<void> muteUnmuteAudio()
  async {
    await assetsAudioPlayer!.setVolume(ismute?1:0);
    ismute = !ismute;
    notifyListeners();
  }

  Future<void> previous()
  async {
    await assetsAudioPlayer!.previous();
    notifyListeners();
  }

  Future<void> next()
  async {
    await assetsAudioPlayer!.next();
    notifyListeners();
  }

}