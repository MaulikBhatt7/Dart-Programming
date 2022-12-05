import 'dart:io';
void main(List<String> args) {
  print("Enter no. 1 : ");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("Enter no. 2 : ");
  int? n2 = int.parse(stdin.readLineSync()!);

  print("Addition = ${n1+n2}");

}