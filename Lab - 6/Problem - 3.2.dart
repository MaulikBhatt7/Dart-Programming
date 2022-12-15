// Write a dart code to create and read a phonebook dictionary.
import 'dart:io';

void main(List<String> args) {
  Phonebook().getPhonebookDetais();
}
class Phonebook{
  List<Map<String,dynamic>> phonebook = [];
  Map<String,dynamic> map = {};
  
    void getPhonebookDetais(){
        while(true){

            stdout.write("Enter 1 for enter data or\nEnter 2 for read data : ");
            try{
                int choice = int.parse(stdin.readLineSync()!);
                switch (choice){
                case 1: 
                stdout.write("Enter Name : ");
                map['name'] = stdin.readLineSync()!;
                stdout.write("Enter Phone no. : ");
                map['phone no.'] = stdin.readLineSync()!;
                phonebook.add(map);
                break;
                case 2:
                    print("-------------------");
                    displayPhonebookDetails();
                    return;
                default:
                    print("Invalid input");
            }
            }
            catch(e){
                print("Please enter a no. 1 or 2");
            }
        }
    
    }
    void displayPhonebookDetails(){
        for(int i=0;i<phonebook.length;i++){
            print("Name : ${phonebook[i]['name']}");
            print("Phone no. : ${phonebook[i]['phone no.']}");
            print("-------------------");
        }
    }
}


