import 'package:audioplayers/audioplayers.dart';

class ItemInfo {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  const ItemInfo(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});

  playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
