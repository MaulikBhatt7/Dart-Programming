/* 
  Create a class named Bank_Account with Account_No, User_Name, Email, Account_Type, and
  Account_Balance as data members. Also create a method GetAccountDetails() and
  DisplayAccountDetails(). Create a main method to demonstrate the Bank_Account class.

*/

import 'dart:io';

void main(List<String> args) {
  Bank_Account()..getCandidateDetails()..displayCandidateDetails();
}
class Bank_Account{
  int? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;

  void getCandidateDetails(){
    stdout.write("Enter Account No. : ");
    Account_No = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Username : ");
    User_Name = stdin.readLineSync()!;
    stdout.write("Enter Email : ");
    Email = stdin.readLineSync()!;
    stdout.write("Enter Account type : ");
    Account_Type = stdin.readLineSync()!;
    stdout.write("Enter Account balance : ");
    Account_Balance = double.parse(stdin.readLineSync()!);
  }

  void displayCandidateDetails(){
    print("Candidate's ID : ${Account_No}");
    print("Candidate's Name : ${User_Name}");
    print("Candidate's Age : ${Email}");
    print("Candidate's Weight : ${Account_Type}");
    print("Candidate's Height : ${Account_Balance}");
  }
}