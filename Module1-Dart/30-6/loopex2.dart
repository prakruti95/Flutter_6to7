import 'dart:io';

void main()
{
  print("Enter Your Number");
  var num = int.parse(stdin.readLineSync().toString());


  int lastdigit = num%10;
  var firstdigit;
  while(num>0)
  {
        if(num>9)
        {
            num=num~/10;
        }
        else
        {
          firstdigit = num;
          num=num~/10;
        }
  }
  var ans = firstdigit+lastdigit;
  print("Sum of first and last digit is $ans");


}