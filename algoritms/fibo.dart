import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int toplam = 0;
  for (int i = 0; i <= num; i++) {
    toplam += i;
    print(fibonacci(i));
  }
  print("toplam $toplam");
}

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
//0 1 1 2 3 5 8 13