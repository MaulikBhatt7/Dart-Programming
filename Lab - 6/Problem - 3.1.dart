/*
  Write a dart code that creates a List with the following values: “Delhi”, “Mumbai”, “Bangalore”,
  “Hyderabad” and “Ahmedabad”. Replace “Ahmedabad” with “Surat” in the above List.
  Write a dart code to create and read a phonebook dictionary.
*/

void main(List<String> args) {
  List<String> city = ["Delhi","Mumbai","Bangalore","Hyderabad","Ahmedabad"];
  int indexOfAhemdabad = city.indexOf("Ahmedabad");
  // -------index known--------
  city.replaceRange(4, 5, ["Surat"]);
  print(city);

  // ---------index unknown---------
  
  // if(indexOfAhemdabad>=0){
  //   city[indexOfAhemdabad]="Surat";
  // }
  // else{
  //   print("Ahmedabad is not found");
  // }
  // print(city);
}