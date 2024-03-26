import "dart:io";


     
// Istifadəçidən iki ədəd rəqəm və bir ədəd (*, /, + və ya -) simvolu daxil etməsini istəyin.
// Daxil edilən simvola əsasən program uyğun riyazi əməliyyatı icra etsin və nəticəni terminalda çap etsin
// Məs: birinci rəqəm 5, ikinci rəqəm 3, simvol * olarsa , nəticə 15.
 
 
void main() {
  print("1-ci reqemi daxil edin");
  int hasError = 0;
  String input1 = stdin.readLineSync()!;
 
  List<String> input1Characters = input1.split("");
  input1Characters.forEach((element) {
    int charCode = element.codeUnitAt(0);
    if (charCode < 48 || charCode > 57) {
      hasError++;
    }
  });
 
  if (hasError != 0) {
    print("Yanlis simvol var. Proqram sonlandırıldı");
  } else {
    print("2-ci reqemi daxil edin");
    String input2 = stdin.readLineSync()!;
    List<String> input2Characters = input2.split("");
    input2Characters.forEach((element) {
      int charCode = element.codeUnitAt(0);
      if (charCode < 48) {
        hasError++;
      }else if(charCode > 57){
        hasError++;
      }
    });
 
    if (hasError != 0) {
      print("Yanlis simvol var. Proqram sonlandırıldı");
    } else {
      int num1 = int.parse(input1);
      int num2 = int.parse(input2);
      int result = 0;
      print("Simvol daxil edin (*, /, + və ya -)");
      String mySymbol = stdin.readLineSync()!;
      if (mySymbol == "+") {
        result = num1 + num2;
        print("Result: $result");
      } else if (mySymbol == "-") {
        result = num1 - num2;
        print("Result: $result");
      } else if (mySymbol == "*") {
        result = num1 * num2;
        print("Result: $result");
      } else if (mySymbol == "/") {
        result = (num1 / num2).ceil();
        print("Result: $result");
      } else {
        print("Yanlis simvol var. Proqram sonlandırıldı");
      }
    }
  }
}
