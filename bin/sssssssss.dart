import 'dart:io';
void main(){
  String str=stdin.readLineSync()!;
  if(str[2]=='+'){
    print(int.parse(str[0])+int.parse(str[4]));
  }
  else if(str[2]=='*'){
    print(int.parse(str[0])*int.parse(str[4]));
  }
  else if(str[2]=='-'){
    print(int.parse(str[0])-int.parse(str[4]));
  }
  else{
    print((int.parse(str[0])/int.parse(str[4])).toInt());
  }
}