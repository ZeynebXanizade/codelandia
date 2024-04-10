// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'mediafile_class.dart';

class PlayList extends MediaFile {
  String name;
  List<MediaFile> mediaFiles;
  PlayList({
    required this.name,
    required this.mediaFiles,
    required super.title,
    required super.duration,
    required super.filePath,
  });

  void playPlaylist() {
    mediaFiles.forEach((element) => {element.play()});
  }

  void shufflePlaylist() {
    mediaFiles.shuffle();
    print('shuffled playlist');
  }
}
