// Write a dart code to find friends’ details by their name using a dictionary. (Create a local
// dictionary and search from it using Map<String, Object?> & Model Class).
import 'dart:io';

void main(List<String> args) {
  Friend friend = Friend();
  friend.getFriendDetails();
  stdout.write("Enter name to search : ");
  friend.searchFriend(stdin.readLineSync(),callback: (i)=>{
    if(i>=0){
      print("Friend's name found at index ${i}")
    }
    else{
      print("Friend's name does not found.")
    }
  });
}
class Friend{
  List<Map<String,Object?>> friends = [];
  Map<String,dynamic> map = {};
  
    void getFriendDetails(){
        while(true){

            stdout.write("Enter 1 for enter data or\nEnter 2 for read data : ");
            try{
                int choice = int.parse(stdin.readLineSync()!);
                switch (choice){
                case 1: 
                stdout.write("Enter Name : ");
                map['name'] = stdin.readLineSync()!;
                stdout.write("Enter Age : ");
                map['age'] = stdin.readLineSync()!;
                stdout.write("Enter City : ");
                map['city'] = stdin.readLineSync()!;
                friends.add(map);
                break;
                case 2:
                    print("-------------------");
                    displayFriendDetails();
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
    void displayFriendDetails(){
        for(int i=0;i<friends.length;i++){
            
            print("Name : ${friends[i]['name']}");
            print("Age : ${friends[i]['age']}");
            print("City : ${friends[i]['city']}");
            print("-------------------");
        }
    }
    void searchFriend(name,{Function? callback}){
      for(int i=0;i<friends.length;i++){
        if(friends[i]['name'].toString().toLowerCase()==name.toString().toLowerCase()){
          callback!(i);
          return;
        } 
        callback!(-1);
        return;
      }    
    }
}