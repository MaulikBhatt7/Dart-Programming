import 'dart:io';

void main(List<String> args) {
  int n=-1,sumOfEven=0,sumOfOdd=0;
   while(n!=0){
      stdout.write("Enter number : ");
      n=int.parse(stdin.readLineSync()!);
      if(n%2==0){
        sumOfEven+=n;
      }
      else{
        sumOfOdd+=n;
      }
   }
   print("Sum of Odd numbers = ${sumOfOdd}");
   print("Sum of Even numbers = ${sumOfEven}");
}