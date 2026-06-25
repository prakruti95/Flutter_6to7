
getdetail({var name, var surname, var email})
{
  if(name!=null && surname==null && email==null)
  {
  print("Your Name is $name");
  }
  else if (surname==null)
  {
    print("Your Name is $name");
    print("Your Email is $email");
  }
  else if (email==null)
  {
    print("Your Name is $name");
    print("Your Surname is $surname");
  }

  else if (name==null)
  {
  print("Your Surname is $surname");
  print("Your Email is $email");
  }

  else {
    print("Your Name is $name");
    print("Your Surname is $surname");
    print("Your Email is $email");
  }


}


void main() {
  getdetail(name:"divyraj",email: "d@gmail.com",surname: "xyz");
  getdetail(name: "jay",email: "j@gmail.com");
  getdetail(name: "dhyey");
}