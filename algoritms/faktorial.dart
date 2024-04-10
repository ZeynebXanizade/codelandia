import 'dart:io';

// void main() {
//   int fakto = 1;
//   int num = int.parse(stdin.readLineSync()!);
//   for (int i = 1; i <= num; i++) {
//     fakto *= i;
//   }
//   print(fakto);
// }

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int a = faktorial(num);
  print(a);
}

int faktorial(int num) {
  if (num > 1) {
    return num * faktorial(num - 1);
  } else {
    return 1;
  }
}
