import 'dart:io';

void main()
{

  print("Enter Your choice");
  var num = int.parse(stdin.readLineSync().toString());

  switch(num)
  {
    case 1:print("English");
    //break;
    case 2:print("Hindi");
    break;
    case 3:print("Gujarati");
    break;
    default:print("num is not valid");
    break;

  }

}