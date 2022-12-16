// Write a dart code to accept n numbers in an array. Display the sum of all the numbers which are
// divisible by either 3 or 5.

import 'dart:io';

void main(List<String> args) {
  int sum=0;
  stdout.write("Enter no. of element of array : ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> array = [];
  for(int i=0;i<n;i++){
    stdout.write("Enter array element : ");
    array.add(int.parse(stdin.readLineSync()!));
  }
  for(int i=0;i<n;i++){
    if(array[i] % 3 == 0 || array[i] % 5 ==0){
      sum+=array[i];
    }
  }
  print(("Sum : ${sum}"));
}
