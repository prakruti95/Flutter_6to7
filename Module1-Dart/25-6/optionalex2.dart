//with para without return
getdetail(String name, [var surname, var email])
{

    if(name!=null && surname!=null && email!=null)
    {
      print("Your Name is $name");
         print("Your Surname is $surname");
         print("Your Email is $email");
    }
    else if(name!=null && surname!=null)
      {
        print("Your Name is $name");
        print("Your Surname is $surname");
      }
    else if(name!=null)
      {
        print("Your Name is $name");
      }

  // if (name==null)
  // {
  //   print("Your Surname is $surname");
  //   print("Your Email is $email");
  // }
  // else if (surname==null)
  // {
  //   print("Your Name is $name");
  //   print("Your Email is $email");
  // }
  // else if (email==null)
  // {
  //   print("Your Name is $name");
  //   print("Your Surname is $surname");
  // }
  // else if()
  //   {
  //
  //   }
  // else {
  //   print("Your Name is $name");
  //   print("Your Surname is $surname");
  //   print("Your Email is $email");
  // }


}


void main() {
  getdetail("divyraj", "xyz", "d@gmail.com");
  getdetail("xyz", "jay");
  getdetail("dhyey");
}