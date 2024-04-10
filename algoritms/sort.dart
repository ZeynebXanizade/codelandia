import 'dart:io';

//1
// void main() {
//   List<int> myList = [];
//   int a = int.parse(stdin.readLineSync()!);
//   int b = int.parse(stdin.readLineSync()!);
//   int c = int.parse(stdin.readLineSync()!);
//   int d = int.parse(stdin.readLineSync()!);
//   int e = int.parse(stdin.readLineSync()!);
//   myList.addAll([a, b, c, d, e]);
//   print(myList);
//   for (int i = 0; i < myList.length; i++) {
//     for (int j = i + 1; j < myList.length; j++) {
//       if (myList[i] > myList[j]) {
//         int temp = myList[i];
//         myList[i] = myList[j];
//         myList[j] = temp;
//       }
//     }
//   }
//   print(myList);
// }
//2
void main() {
  List<int> myList = [];
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);
  int e = int.parse(stdin.readLineSync()!);
  myList.addAll([a, b, c, d, e]);
  print(myList);

  listSorting(myList.length, myList);
  print(myList);
}

void listSorting(int n, List<int> myList) {
  if (n != 1) {
    myLoopInList(n - 1, myList, 0);
    listSorting(n - 1, myList);
  }
}

void myLoopInList(int n, List<int> myList, int i) {
  if (myList[i] > myList[i + 1]) {
    int temp = myList[i];
    myList[i] = myList[i + 1];
    myList[i+1] = temp;
  }

  if (i < n - 1) {
    myLoopInList(n, myList, i + 1);
  }
}
