import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter 1st number : ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter operator : ");
  String op = (stdin.readLineSync()!);

  switch (op){
    case "+":
      print("Addition = ${n1+n2}");
      break;
    case "-":
      print("Substraction = ${n1-n2}");
      break;
    case "*":
      print("Multiplication = ${n1*n2}");
      break;
    case "/":
      print("Division = ${n1/n2}");
      break;
    default:
      print("Invalid Operator");
  }

}