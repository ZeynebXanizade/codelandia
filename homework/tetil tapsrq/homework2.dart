import 'dart:io';

void main() {
  stdout.writeln("Eded daxil edin:");
  int numbers = int.parse(stdin.readLineSync()!);
  //Daxil edilən ədədin faktorialı konsolda çap edilsin
  int faktorial = 1;
  for (int i = 1; i <= numbers; i++) {
    faktorial *= i;
  }
 
  print("Numberin faktoriali : $faktorial");

  //Sıfırdan, daxil edilən ədədə'dək olan tək və cüt rəqəmlər ayrı ayrı listlərə əlavə olunsun və listlərin hər biri konsolda çap olunsun.
  List<int> coupleNumber = [];
  List<int> aloneNumber = [];
  for (int i = 0; i <= numbers; i++) {
    if (i % 2 == 0) {
      coupleNumber.add(i);
    } else {
      aloneNumber.add(i);
    }
  }

  print("Cut ededler : $coupleNumber");
  print("Tek ededler: $aloneNumber");
  //Sıfırdan daxil edilən ədədə'dək olan fibonacci ədədlərinin cəmi konsolda çap olunsun.

  //0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89,
  int fibSum(int numbers) {
    if (numbers <= 0) {
      return 0;
    }
    int a = 0;
    int b = 1;
    int sum = 1;
    for (int i = 2; i < numbers; i++) {
      int sumNum = a + b;
      a = b;
      b = sumNum;
      sum += sumNum;
    }
    return sum;
  }

  print("Fibonacci ededlerin cemi : ${fibSum(numbers)}");
}
