import 'dart:io';

void main()
{
  print("Enter Your a");
  var a = int.parse(stdin.readLineSync().toString());

  print("Enter Your b");
  var b = int.parse(stdin.readLineSync().toString());

  var c = a+b;
  print(c);

}