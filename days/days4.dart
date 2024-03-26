void main() {
  // ! if, else if , else

  int a = 100;
  int b = 30;
  int c = 10;
  b += a += c;
  print(a);
  print(b);

  // // *
  // String gender = 'Male';
  // String gender1 = 'Female';
  // int age = 16;

  // if (gender == 'Male') {
  //   if (age >= 18) {
  //     print('Getdin xidmete');
  //   } else {
  //     print('Hele vaxta var');
  //   }
  // } else {
  //   print('Herbi mukellefiyeti yoxdur');
  // }

  // * Balansda 1000 azn ve daha cox varsa , 10% azaltsin
  // * Balansda 500 azn ve daha cox varsa , 5% azaltsin
  // * Balansda 100 azn ve daha cox varsa , 5% artirsin
  // * Balansda 0 azn  ve daha cox varsa , 10% artirsin
  // * Eger 0dirsa 10 azn elave et

  double balance = 50;

  if (balance >= 1000) {
    // balance = balance - balance * 10 / 100;
    balance = balance * 0.9;
    print('Balansinizdan 10% azaldildi. Yeni balans: $balance');
  } else if (balance >= 500) {
    balance -= balance * 5 / 100;
    print(balance);
  } else if (balance >= 100) {
    // balance += balance * 5 / 100;
    balance = balance * 1.05;
    print(balance);
  } else if (balance >= 0) {
    if (balance == 0) {
      balance += 10;
    } else {
      balance = balance * 1.1;
    }
    print(balance);
  } else {
    print(balance);
  }
  double num = double.parse(balance.toStringAsFixed(2));
  print(num);
}
/*Set və Map - dən istifadə edərək iki ədəd siyahı yaradın. Map - in içərisində mağazada olan məhsullar və qiymətləri saxlanılsın. Set-in içərisində isə alınacaq məhsulların siyahısı saxlanılsın. Və öncədən təyin olunmuş bir büdcə olsun. Alınacaq məhsulların toplam qiyməti təyin olunmuş büdcəni keçərsə konsolda (Büdcə azdır) yazılsın. Əgər budcə yetirsə (Alis-veris ugurla tamamlandı) yazılsın. */
// void main() {
//   Set<String> mySet = {"Alma", "Armud", "Qarpiz"};
//   Map<String, int> myMap = {"Alma": 20, "Armud": 10, "Qarpiz": 10, "Kitab": 10};
//   double balance = 10.0;
//   num price = 0;
//   mySet.forEach((element) {
//     if (myMap.containsKey(element)) {
//       price = price + myMap[element]!;
//     }
//   });
//   if (price > balance) {
//     print("Büdcə azdır");
//   } else {
//     print(price);
//     print("Alis-veris ugurla tamamlandı");
//   }
// }
