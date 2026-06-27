import 'dart:io';

void main()
{
    print("Enter Num of Rows:");
    var num = int.parse(stdin.readLineSync().toString());
    var num1 = 1;
  //row
  for(int i=1;i<=num;i++)
  {
    //col
    for(int j=1;j<=i;j++)
    {
      stdout.write(num1);
      num1++;

    }
    print("");
  }
}