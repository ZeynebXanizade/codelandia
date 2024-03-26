import "dart:io";

void main() {
  //Sizdən bir alışveriş siyahısı üçün məhsul adları və miqdarlarını istifadəçidən alacaq bir tətbiq hazırlamanızı istəyirəm. Məhsul adı və miqdarını bir Map'də saxlayın, birdən çox alışveriş siyahısını isə bir List'də saxlaya bilərsiniz. İstifadəçi mövcud siyahıya yeni məhsullar əlavə edə, mövcud məhsulları yeniləyə və ya sile bilər. İstifadəçidən alınan girişlərə əsasən if-else istifadə edərək nəzarət edə bilərsiniz. Həmçinin, istifadəçinin daxil etdiyi ümumi məhsul sayı və ya müəyyən bir məhsul haqqında məlumat verə bilərsiniz.
  Map<String, int> products = {
    "Alma": 15,
    "Şokalad": 20,
    "Armud": 5,
    "Salfetka": 2,
    "Qarpiz": 21
  };
  List<String> myProductsList = ["Alma", "Şokalad", "Salfetka"];
  int initialProductCount = myProductsList.length;
  //elave etmek
  stdout.writeln("Mehsul adini daxil edin");
  String choice = stdin.readLineSync()!;
  if (myProductsList.contains(choice)) {
    print("Bu mehsul siyahida var");
  } else {
    myProductsList.add(choice);
    print("$choice elave edildi");
  }
  print(myProductsList);

  //yenilemek
  stdout.writeln("Yenilemek istediyiniz mehsulun adin daxil edin");
  String productsName = stdin.readLineSync()!;
  if (products.containsKey(productsName)) {
    stdout.writeln("Mehsulun miqdarin qey edin");
    int quantity = int.parse(stdin.readLineSync()!);
    products[productsName] = quantity;
    print("Mehsul yenilendi");
  } else {
    print("Bele mehsul yoxdur");
  }
  print(products);
  //silmek
  stdout.writeln("Silmek istediyiniz mehsulun adin daxil edin");
  String productsNameInput = stdin.readLineSync()!;
  if (products.containsKey(productsNameInput)) {
    products.remove(productsNameInput);
    print("Mehsul silindi");
  } else {
    print("Bele mehsul yoxdur");
  }
  print(products);

  //alisveris siyahisi
  if (products.isEmpty) {
    print("Siyahi bosdur");
  } else {
    products.forEach((key, value) {
      print("$key - $value");
    });
  }

  //son mehsul sayi
  int finalProducts = myProductsList.length;
  int addProductCount = finalProducts - initialProductCount;
  print("Əlavə etdiyiniz məhsul sayi: $addProductCount");
}
