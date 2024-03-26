//?where method
// void main() {
//   List<String> names = ["Zeyneb", "Nesir", "Nuray", "Gulay"];
//   Iterable<String> visibleNames = names.where((element) {
//     return element.contains('Z');
//   });
//   print(visibleNames);

//   List<int> numbers = [2, 3, 4, 555, 678];
//   Iterable<int> visibleNumbers = numbers.where((element) => (element % 2 == 0));
//   print(visibleNumbers);

//   List<Friend> myFriends = [
//     Friend(name: "Gulay", country: "Lemko"),
//     Friend(name: "Gulnaz", country: "Baku"),
//     Friend(name: "Aysen", country: "Baku")
//   ];
//   Iterable<Friend> visibleFriend =
//       myFriends.where((element) => element.country.contains("Baku"));
//   visibleFriend.forEach((element) => print(element.name));
// }

// class Friend {
//   String name;
//   String country;
//   Friend({required this.name, required this.country});
// }

//? forEach method
// void main() {
// List<String> names = ["Zeyneb", "Nesir", "Nuray", "Gulay"];
// names.forEach((element) => print(element));
// List<int> numbers = [2, 3, 4, 555, 678];
// int sum = 0;
// numbers.forEach((element) => sum += element);
// print(sum);

//   List<Friend> myFriens = [
//     Friend(name: "Almas", age: 25),
//     Friend(name: "Nuni", age: 15)
//   ];
//   myFriens.forEach((element) => print("${element.age}"));
// }

// class Friend {
//   String name;
//   int age;
//   Friend({required this.name, required this.age});
// }

//? fold method

// void main() {
// List<String> names = ["Zeyneb", "Nesir", "Nuray", "Gulay"];
// List<String> letters = [];
// names.forEach((element) => letters.add(element.split('').first));
// print(letters.reversed.join());
// String firstLetters =
//     names.fold('', (previousValue, element) => previousValue + element[0]);
// print(firstLetters);

// List<int> numbers = [2, 3, 4, 555, 678];
// int num =
//     numbers.fold(0, (previousValue, element) => previousValue + element);
// print(num);
//   List<Friend> myFriens = [
//     Friend(name: "Almas", age: 25),
//     Friend(name: "Nuni", age: 15)
//   ];
//   int sumAge =
//       myFriens.fold(0, (previousValue, element) => previousValue + element.age);
//   print(sumAge);
// }

// class Friend {
//   String name;
//   int age;
//   Friend({required this.name, required this.age});
// }

//? sort method
// void main() {
//   List<String> names = ["Zeyne", "Nesir", "Nuray", "Gulay"];
//   names.sort((a, b) => a.length.compareTo(b.length));
//   print(names);
//   List<Friend> myFriens = [
//     Friend(name: "Almas", age: 25),
//     Friend(name: "Nuni", age: 15)
//   ];
//   myFriens.sort((a, b) => a.age.compareTo(b.age));
//   print(myFriens);
// }

// class Friend {
//   String name;
//   int age;
//   Friend({required this.name, required this.age});
// }

//? map method
void main() {
  List<int> numbers = [2, 3, 4, 555, 678];
  var powNumbers = numbers.map((e) => e * 2);
  print(powNumbers);
  List<String> names = ["Zeyneb", "Nesir", "Nuray", "Gulay"];
  var lenghtNames = names.map((e) => e.length);
  print(lenghtNames);
  List<Friend> myFriens = [
    Friend(name: "Almas", age: 25),
    Friend(name: "Nuni", age: 15)
  ];
  Iterable<bestFriend> bestsFri = myFriens.map((e) => bestFriend(name: e.name));
  bestsFri.forEach((element) {
    print(element.say());
  });
}

class Friend {
  String name;
  int age;
  Friend({required this.name, required this.age});
}

class bestFriend {
  String name;

  bestFriend({required this.name});
  String say() {
    return "One my ife $name";
  }
}
