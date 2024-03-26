import 'dart:io';

void main() {
  /*İstifadəçidən hər hansısa bir söz daxil etməsini tələb edən proqram yaradın.
Konsolda istifadəçinin daxil etdiyi sözün Palindrom söz olub olmadığını bildirən məlumat çap olunsun.*/
  stdout.writeln("Daxil edin:");
  String inputText = stdin.readLineSync()!.toLowerCase();
  String reversedText = inputText.split('').reversed.join('');
  if (inputText == reversedText) {
    print("$inputText palindromdur");
  }else{
    print("$inputText palindrom deyil");
  }
}
