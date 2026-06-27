import 'dart:io';

void main()
{
    print("Enter Num of Rows:");
    var num = int.parse(stdin.readLineSync().toString());

  //row
  for(int i=1;i<=num;i++)
  {
    //col
    for(int j=1;j<=i;j++)
    {
      stdout.write("*");

    }
    print("");
  }
}