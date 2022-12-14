/*
  Write a dart code to create a Circle class with area() and perimeter() function to find area and
  perimeter of the circle.

*/
import 'dart:io';

void main(List<String> args) {
  Circle circle = Circle();
  stdout.write("Enter radius : ");
  double r = double.parse(stdin.readLineSync()!);
  Circle()..area(r)..perimeter(r);

}
class Circle{
  void area(double r){
    print("Area of circle : ${3.14*r*r}");
  }
  void perimeter(double r){
    print("Perimeter of circle : ${6.28*r}");
  }
}