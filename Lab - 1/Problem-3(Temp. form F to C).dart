import 'dart:io';
void main(List<String> args) {
  print("Enter tempareture in Fahrenheit : ");
  double? tempInFahrenheit = double.parse(stdin.readLineSync()!);

  double tempInCelsius = ((tempInFahrenheit-32)*5)/9;

  print("Temprature In Celsius : ${tempInCelsius}");
}