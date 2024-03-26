void main() {
  List<int> numbers = [1, 3, 10, 7, 2, 9, 5, 4, 6];

  var result = numbers.any((element) {
    if (element.isEven) {
      print("$element is even");
    } else {
      print("$element is odd");
    }
    return false;
  });
}
