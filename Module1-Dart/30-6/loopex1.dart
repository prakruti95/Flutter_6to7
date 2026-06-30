import 'dart:io';
//sum of all digits -> 1234 -> 10
void main()
{
  print("Enter Your Number");
  var num = int.parse(stdin.readLineSync().toString());
  var sum=0;

  while(num>0)
  {
    int rem = num%10;//4//3//2//1
    sum+=rem;//4//7//9//10
    num=num~/10;//123//12//1//0
  }
  print("Sum of all digit is $sum");

}