class Person
{
  //data members
  var id;
  var name;
  var surname;

  display()
  {
    print("Your Id is : ${id}, Your name is : ${name} , Your Surname is : ${surname}");
  }

}
void main()
{
    var p1 = Person();//object
    var p2 = Person();//object
    //Person p2 = Person();
    //Person p3;

    p1.id=101;
    p1.name="dhyey";
    p1.surname="xyz";

    p2.id=102;
    p2.name="divyraj";
    p2.surname="xyz";

    p1.display();
    p2.display();

}