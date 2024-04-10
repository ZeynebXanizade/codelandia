// void main() {
//   functionHello(age: 21);
// }

// void functionHello({required int age}) {
//   int eded = 100 - age;
//   print(eded);
// }

void main() {
  funk("Zeyneb");
}

void funk(String name) {
  // List<String> myName = name.split("");
  // String newName = myName.reversed.join("");
  //1
  String newName = name.split("").join("\n");
  print(newName);
  //2
  for (int i = 0; name.length >i; i++) {
    print(name[i]);
  }
}
