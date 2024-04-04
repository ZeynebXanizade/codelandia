void main() {
  generatedList(null);
}

void generatedList(int? count) {
  if (count == null) {
    return;
  } else {
    List<int> myList = List.generate(count, (index) => index + 1);
    int max = 0;
    int min = myList[0];

    for (int i = 0; i < myList.length; i++) {
      if (myList[i] > max) {
        max = myList[i];
      }
      if (myList[i] < min) {
        min = myList[i];
      }
    }

    print(myList);
    // int i = 0;
    // if (myList[i] > myList[i + 1]) {
    //   int temp = myList[i];
    //   myList[i] = myList[i + 1];
    //   myList[i + 1] = temp;
    // }

    // print(myList);

    print('Max: $max');
    print('Min: $min');
  }
}
