import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter a string : ");
  String str = stdin.readLineSync()!;
  List li;
  li = str.split("");
  int sum=int.parse(li[0]);
  for(int i=1;i<li.length;i+=2){
    if(li[i]=="+"){
      sum+=int.parse(li[i+1]);
    }
    else if(li[i]=="-"){
      sum-=int.parse(li[i+1]);
    }
    else if(li[i]=="*"){
      sum*=int.parse(li[i+1]);
    }
    else if(li[i]=="/"){
      sum~/=int.parse(li[i+1]);
    }
    else{
      print("Invalid String");
      break;
    }
  }
  print("Answer = ${sum}");
}
