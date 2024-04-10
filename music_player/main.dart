import 'model/mediafile_class.dart';
import 'model/playlist_class.dart';

void main() {
  MediaFile song1 = MediaFile(
      title: "Tarkan-Yolla",
      duration: 100,
      filePath: "https://youtu.be/U66ixhdbxEI?si=HfdYal0KKAl12WjB");
  MediaFile song2 = MediaFile(
      title: "Kenan Doğulu - Şans Meleğim",
      duration: 200,
      filePath: "https://youtu.be/oYDY7msKIdY?si=I_j25uXsjTnOAfyt");
  MediaFile song3 = MediaFile(
      title: "Serdar Ortac -Dansoz",
      duration: 300,
      filePath: "https://youtu.be/LGRKsd-lrUc?si=jrRlpsB-pySS00OT");

  PlayList playList = PlayList(
      name: "Zeynebin playlisti",
      mediaFiles: [song1, song2, song3],
      title: "",
      duration: 100,
      filePath: "");

  playList.playPlaylist();

  playList.shufflePlaylist();
  playList.playPlaylist();
}
