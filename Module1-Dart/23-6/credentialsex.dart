import 'dart:io';

void main()
{
  String email = "dhyey@gmail.com";
  String pass="1234";

  print("Enter Your Email");
  var myemail = stdin.readLineSync().toString();
  print("Enter Your Password");
  var mypass = stdin.readLineSync().toString();

  if(email==myemail && pass==mypass)
    {
        print("Logged in Succesfully");
    }
  else
    {
      print("Logged in fail");
    }
}