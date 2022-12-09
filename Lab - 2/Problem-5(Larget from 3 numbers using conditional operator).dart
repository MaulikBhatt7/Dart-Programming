import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter 1st number : ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int n2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 3rd number : ");
  int n3 = int.parse(stdin.readLineSync()!);

  print("${n1>n2 && n1>n3 ? n1 : (n2>n3 ? n2 : n3)} is largest number");

}