// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'playable_class.dart';

class MediaFile implements Playable {
  String title;
  int duration;
  String filePath;
  MediaFile({
    required this.title,
    required this.duration,
    required this.filePath,
  });

  shufflePlaylist() {}

  @override
  void pause() {
    print("$title saxlandi");
  }

  @override
  void play() {
     print("$title basladi");
  }

  @override
  void stop() {
     print("$title dayandi");
  }
}
