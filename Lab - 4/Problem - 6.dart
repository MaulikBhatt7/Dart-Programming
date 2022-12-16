// Write a dart code to count the number of even or odd numbers from an array of n numbers.
import 'dart:convert';
import 'dart:io';
 

void main(List<String> args) {
  List<int> numbers = [1,2,3,4,5];
  counter(numbers);
}
void counter(List<int> array){
  int oddCounter=0,evenCounter=0;
  for(int i=0;i<array.length;i++){
    if(array[i] % 2 == 0)
      evenCounter++;
    else  
      oddCounter++;
  }
  print("Count of odd number : ${oddCounter}");
  print("Count of even number : ${evenCounter}");
}