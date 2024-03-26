import 'dart:io';

void main() {
  int? a;
  int? b;
  int? c;
  int? d;
  int max = 0;
  int? min;

  String input = stdin.readLineSync()!;
  List<String> numList = input.split(',');
  numList.forEach((element) {
    if (a == null) {
      a = int.parse(element);
    } else if (b == null) {
      b = int.parse(element);
    } else if (c == null) {
      c = int.parse(element);
    } else if (d == null) {
      d = int.parse(element);
    }
    if (min == null) {
      min = int.parse(element);
    }
    if (int.parse(element) > max) {
      max = int.parse(element);
    } else if (int.parse(element) < min!) {
      min = int.parse(element);
    }
  });
  // print(max);
  // print(min);
  
 List<int> mySortList = [a!, b!, c!, d!];
  mySortList.sort();

  print(mySortList);
}
