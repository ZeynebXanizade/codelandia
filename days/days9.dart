//isdifadeciden 1edndaxil etmesin telbedn proqram daha sfadeci ededi daxil edib entere vurduqdan sonra printe ededden bir evvelki ve bir sonraki eden ekrana cixsn
import 'dart:io';

void main() {
  try {
    stdout.writeln("Daxil et");
    int num = int.parse(stdin.readLineSync()!);
    print(" ededden sonra:${num + 1} ededden evvel:${num - 1} ");
  } catch (e) {
    print(e);
  }
}
