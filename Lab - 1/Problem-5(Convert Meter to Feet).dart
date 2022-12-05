import 'dart:io';

void main(List<String> args) {
  print("Enter value in meter : ");
  double? valueInMeter = double.parse(stdin.readLineSync()!);

  double valueInFeet = (valueInMeter)*3.28;

  print("Value in feet is ${valueInFeet}");
}