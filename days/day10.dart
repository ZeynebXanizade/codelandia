/*isdifadeciden 1 eded daxil eden proqram yazn try catch icinde yaz,
alinan eden 0-100 arasinda omalidir, 0dan kicin 100den boyuk olsa error olsn , 0dan alinan edede qeder olan fib ededleri liste elave et 
,daha sonra hemin ededlerin cemini yazin , 
listi qarisdir ve sonra listi kicikden boyuye sirala ama sortdan isdifade etme*/

import 'dart:io';

void main() {
  print("Daxil edin:");
  String input = stdin.readLineSync()!;

  try {
    int myNum = int.parse(input);
    if (myNum < 0 || myNum > 100) {
      print("0-100 arasinda reqem daxil et.");
    } else {
      List<int> list = [0, 1];
      fibonacci(myNum, list);
      print("Fibonacci listi: $list");
      int sumNum = list.reduce((value, element) => value + element);
      print("Fibonaccinin toplami: $sumNum");
      list.shuffle();
      print("Qarisdirilmis list: $list");
      bubbleSort(list);
      print("Sıralanmış list: $list");
    }
  } catch (e) {
    print("Reqem daxil et.");
  }
}

void fibonacci(int n, List<int> list) {
  if (n > 1) {
    int fib = list[list.length - 1] + list[list.length - 2];
    if (fib <= n) {
      list.add(fib);
      fibonacci(n, list);
    }
  }
}

void bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int a = i + 1; a < list.length; a++) {
      if (list[i] > list[a]) {
        int nums = list[i];
        list[i] = list[a];
        list[a] = nums;
      }
    }
  }
}
