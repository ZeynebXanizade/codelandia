// 1- Sayta daxil olarkən 2 seçim verməlidir : login ilə giriş və guest giriş
// 2- Login ilə girişdə, istifadəçi adı və porolu daxil edilməlidir.
// 3- İstifadəçi adı və ya parol: null və boş ola bilməz.
// 4- Girişdən sonra məhsulların siyahısı əks olunmalıdır.
// 5- Müştəri istədiyi məhsulu seçəndən sonra məhsulun məlumatları və qiyməti göstərilməlidir və  davam edib-etməyəcəyi soruşulmalıdır.
// 6- Davam etdiyi halda 2 seçim təklif olunur : Nağd və Kartla ödəmə
// 7- Nağd ödəmə zamanı 2 seçim verilir -  Çatdırlma və Özün gəl apar. Çatdırlma seçiləndə qiymətə 10 azn əlavə edilməlidir. Özün gəl aparda məhsulun qiyməti stabil qalır.
// 8- Kartla ödəmə zamanı 2 seçim təklif olunur: Birbaşa və taksit
// 9- Kartla birbaşa ödəniş zamanı məhsulun qiyməti stabil qalır və kart məlumatları tələb olunur.
// 10- Taksit seçildikdə 3 bank təklif olur: Birkart, Tamkart və Bolkart
// 11- Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.
// 12- Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.
// 13- Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.

import 'dart:io';

void main() {
  Map<String, double> allProducts = {
    "Televizor": 1499.99,
    "Notebook": 4999.99,
    "Phone": 1550,
    "Paltaryuyan": 800
  };

  Map<String, double> myBasket = {};

  print("[1] - Hesaba daxil ol\n[2] - Qonaq Girishi");
  String loginTypeChoice = stdin.readLineSync()!;
  switch (loginTypeChoice) {
    case "1":
      print("Adinizi daxil edin");
      List<String> userCredentials = loginLikeUser();
      print("Xosh Geldin ${userCredentials[0]}");
      showProducts(allProducts);
    case "2":
      loginLikeGuest(allProducts);
    default:
  }
}

List<String> loginLikeUser() {
  String myUserName = "Nicat";
  String myPass = "12345";
  String userName = stdin.readLineSync()!;
  if (userName.split(" ").join() != "") {
    if (userName == myUserName) {
      print("Shifreni daxil edin");
      while (true) {
        String userPass = stdin.readLineSync()!;
        if (userPass == myPass) {
          break;
        } else {
          print("Shifre Yanlishdir, yeniden daxil edin");
        }
      }
    } else {
      print("Istifadeci adi yanlishdir, yeniden daxil edin");
      loginLikeUser();
    }
  } else {
    print("Istifadechi adi bosh ola bilmez.");
    loginLikeUser();
  }

  return [myUserName, myPass];
}

void loginLikeGuest(Map<String, double> productList) {
  print("Xosh Geldin Qonaq");
  showProducts(productList);
}

void showProducts(Map<String, double> productsList) {
  int barCode = 1;
  productsList.forEach((key, value) {
    print("[$barCode] $key -- $value");
    barCode++;
  });
}

void selectProduct(
    Map<String, double> productsList, Map<String, double> basket) {
  print("Barkodu daxil edin");
  String productCodeInput = stdin.readLineSync()!;
  int productCode = 0;

  try {
    productCode = int.parse(productCodeInput);
  } catch (e) {
    print("Barkodda yanlish simvol var");
  }

  String selectedProduct = productsList.keys.toList()[productCode - 1];
  basket.addAll({selectedProduct: productsList[selectedProduct]!});
}
