import 'dart:io';
import 'dart:math';

void main() {
  //Oyunun qaydalarını bir Map içində saxlayın
  Map<String, String> gameRules = {
    "Rock": "Scissors",
    "Paper": "Rock",
    "Scissors": "Paper",
  };
  print("0:Rock\n1:Paper\n2:Scissors\nexit");
  int userWin = 0;
  int compWin = 0;
  Random random = Random();
  while (true) {
    stdout.writeln("Secimivi daxil et:");
    String user = stdin.readLineSync()!;
    //İstifadəçi exit yazmadığı müddətcə oyundan (proqramdan) çıxış olunmasın
    if (user == "exit") {
      if (userWin > compWin) {
        print("Oyunu qazandiniz");
      } else if (userWin == compWin) {
        print("Beraber oldunuz");
      } else {
        print("Uduzdunuz");
      }
      print("Computer win :$compWin \\\\\\\\\\\\\\ You win: $userWin");
      break;
    }
//Xəta analizi aparın. İstifadəçi yanlış input daxil etdiyi zaman konsolda xəta görünməsin və ya proqramdan çıxış olunmasın. Xəta yerinə (yanlış seçim etdiniz, yenidən daxil edin yazılsın)
    if (gameRules.containsKey(user)) {
    } else {
      print("yanlış seçim etdiniz, yenidən daxil edin yazılsın");
      continue;
    }
//İstifadəçi seçimini etdikdən sonra kompyuterin seçimi random şəkildə olsun.
    String computer =
        gameRules.keys.elementAt(random.nextInt(gameRules.length));
    print("Computer : $computer");
    //İstifadəçinin və Kompyuterin seçimləri olunduqdan sonra proqram seçimləri yoxlasın və qalibin istifadəçi və ya kompyuter olduğunu konsolda çap etsin. və ümumu hesab konsolda çap olunsun
    switch (gameRules[user]) {
      case 'Scissors':
        if (computer == 'Paper') {
          print("Qazandınız");
          userWin++;
        } else {
          print("Uduzdunuz");
          compWin++;
        }
      case 'Paper':
        if (computer == 'Rock') {
          print("Qazandınız");
          userWin++;
        } else {
          print("Uduzdunuz");
          compWin++;
        }
      case 'Rock':
        if (computer == 'Scissors') {
          print("Qazandınız");
          userWin++;
        } else {
          print("Uduzdunuz");
          compWin++;
        }
    }
    print("Computer win :$compWin \\\\\\\\\\\\\\ You win: $userWin");
  }
}
