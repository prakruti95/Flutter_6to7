import 'dart:io';

void main()
{
    print("Enter Num of Rows:");
    var num = int.parse(stdin.readLineSync().toString());
    int a = 65;
  //row
  for(int i=1;i<=num;i++)
  {
    for(int space=1;space<=5-i;space++)
    {
      stdout.write(" ");
    }
    //col
    for(int j=1;j<=i;j++)
    {
      stdout.write(String.fromCharCode(a));
      //a++;
    }
    a++;
    print("");
  }
}