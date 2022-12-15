
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
  stdout.write("Enter name to delete : ");
  friend.deleteFriend(stdin.readLineSync(),callback: (i)=>{
    if(i==1){
      print("Record Deleted Successfully")
    }
    else{
      print("Record does not found")
    }
  });

  stdout.write("Enter key to update : ");
  String key = stdin.readLineSync()!;
  stdout.write("Enter old value : ");
  String oldvalue= stdin.readLineSync()!;
  stdout.write("Enter new value : ");
  String newvalue= stdin.readLineSync()!;
  friend.updateFriend(key,oldvalue,newvalue,callback: (i){
    if(i==1){
      print("Record Updated Successfully");
    }
    else{
      print("Record does not found");
    }
    print(friend.friends);
  });
}
class Friend{
  List<Map<String,dynamic>> friends = [];
    void getFriendDetails(){
       
        while(true){
            stdout.write("Enter 1 for enter data or\nEnter 2 for read data : ");
            try{
                int choice = int.parse(stdin.readLineSync()!);
                switch (choice){
                case 1: 
                  Map<String,dynamic> map = {};
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

        print(friends);
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

    void deleteFriend(name,{Function? callback}){
      for(int i=0;i<friends.length;i++){
        if(friends[i]['name'].toString().toLowerCase()==name.toString().toLowerCase()){
          friends.remove(friends[i]);
          print(friends);
          callback!(1);
          return;
        }
        print(friends);
        callback!(0);
      }
    }

    void updateFriend(key,oldvalue, newvalue,{Function? callback}){
      for(int i=0;i<friends.length;i++){
        if(friends[i][key].toString().toLowerCase()==oldvalue.toString().toLowerCase()){
          friends[i][key]=newvalue;
          callback!(1);
          return;
        }
        callback!(0);
      }
    }
}
