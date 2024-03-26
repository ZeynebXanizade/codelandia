void main() {
  int? side1;
  int? side2;
  for (var a = 0; a < 7; a++) {
    for (var b = a; b < 7; b++) {
      side1 = a;
      side2 = b;
      print('${side1.toString()}/' '${side2.toString()}');
    }
  }
}
