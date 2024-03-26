void main() {
  ////////////////////////////////////////////////////SET////////////////////////////////////////////////////////////////
  Set<int> num1 = {1, 2, 3, 4};
  Set<int> num2 = {5, 6, 7, 8, 4};
  //! hammisin num3e birlesdirir
  // Set<int> num3 = num1.union(num2);
  // print(num3);
  // ! num1 de olan num 2de yoxdursa gosterir
  // print(num1.difference(num2));
  //! num 1 ve num 2 ortaqlari gosterir
  // print(num1.intersection(num2));
  //!0daki indexi gosterir
  // print(num2.toList()[0]);

  //MAP//
  Map<int, String> user = {1: "Zeyneb", 2: "Nesir", 3: "Nnuni"};
  //? elave edir
  user.addAll({4: "Hesen", 5: "Huseyn"});
  // ? keye gore silir
  // user.remove(1);
  // ? 0 indexindekini keyi gosterir
  // print(user.keys.toList()[0]);
  //? cavab 15 eliyir keyleri toplayir
  // print(user.keys.reduce((value, element) => value + element));

  //task1//Bir ədəd List yaradın. Listin içində çox sayda xüsusi isimlər olsun. Bəziləri təkrarlansın amma bəziləri təkrarlanmasın. Daha sonra bu listin içində olan unikal isimləri konsolda çap edin. daha sonra listin içindəki təkrarlanan isimləri də ayrıca çap edin.
  List<String> myNames = [
    "Zeyneb",
    "Nuray",
    "Leyla",
    "Zeyneb",
    "Nesir",
    "Gulnaz",
    "Nesir"
  ];
  //1
  Set<String> mySet = myNames.toSet();
  // print(mySet);
  //2
  List<String> myList = mySet.toList();
  myNames.remove(myList[0]);
  myNames.remove(myList[1]);
  myNames.remove(myList[2]);
  myNames.remove(myList[3]);
  myNames.remove(myList[4]);

  print(myNames);

  //task2//
  // int tam ededler ve set yarat sehir adi ucuncu ise map olsun list 1ci index
  List<int> age = [1, 2, 3, 4, 5];
  List<String> city = ["Astara", "Lenkaran", "Baku", "Qebele", "Gence"];
  // Map<int, String> myMap = {
  //   age[0]: city.toList()[0],
  //   age[1]: city.toList()[1],
  //   age[2]: city.toList()[2],
  //   age[3]: city.toList()[3],
  //   age[4]: city.toList()[4],

  //ikinci

  // age[0]: city.elementAt(0),
  // age[1]: city.elementAt(1),
  // age[2]: city.elementAt(2),
  // age[3]: city.elementAt(3),
  // age[4]: city.elementAt(4),
  // };
  // Map<String, String> myMap = {
  //   // age.map((e) => print(e)).toList().toString() : city.map((e) => print(e)).toList().toString()
  //   age.toString() :city.toString()
  // };
  // print(myMap);
  Map<int, String> myMap = {};
  age.map(
    (e) {
      myMap.addAll({e: city[e-1]});
    },
  ).toList();

  print(myMap);

}
