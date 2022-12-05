import 'dart:io';
void main(List<String> args) {
  print("Enter marks of Sub. 1 : ");
  int? m1 = int.parse(stdin.readLineSync()!); 

  print("Enter marks of Sub. 2 : ");
  int? m2 = int.parse(stdin.readLineSync()!);

  print("Enter marks of Sub. 3 : ");
  int? m3 = int.parse(stdin.readLineSync()!);

  print("Enter marks of Sub. 4 : ");
  int? m4 = int.parse(stdin.readLineSync()!);

  print("Enter marks of Sub. 5 : ");
  int? m5 = int.parse(stdin.readLineSync()!);

  double percentage = (m1+m2+m3+m4+m5)/5;

  print("Percentage : ${percentage}");
}