void main(){

  // task2
  String sentence = "Hello My Name is Zeynab";
  List<String> myList = sentence.split(' ');
  myList.shuffle();
  var newString = myList.join(' ');
  print(newString);

  List<int> numbersOne = [10, 2, 5, 8];
  List<int> numbersTwo = [1, 4, 18, 9];
  List<int> numbers = [
    // numbersOne.elementAt(0) + numbersTwo.elementAt(0),
    // numbersOne.elementAt(1) + numbersTwo.elementAt(1),
    // numbersOne.elementAt(2) + numbersTwo.elementAt(2),
    // numbersOne.elementAt(3) + numbersTwo.elementAt(3),
  ];
  numbers.addAll([
    numbersOne[0] + numbersTwo[0],
    numbersOne[1] + numbersTwo[1],
    numbersOne[2] + numbersTwo[2],
    numbersOne[3] + numbersTwo[3]
  ]);
  print("$numbers");
}