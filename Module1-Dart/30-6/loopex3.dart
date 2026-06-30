import 'dart:io';

void main()
{
  print("Enter Your Number");
  var num = int.parse(stdin.readLineSync().toString());
  var rev=0;
  while(num>0)
  {
    int rem = num%10;
    rev = (rev*10)+rem;
    num=num~/10;
  }

  print("Reverse num is $rev");


}