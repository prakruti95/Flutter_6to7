class Person
{
  //data members
  var id;
  var name;
  var surname;


}
void main()
{
    var p1 = Person();//object
    Person p2 = Person();
    Person p3;

    p1.id=101;
    p1.name="dhyey";
    p1.surname="xyz";

    print("Your Id is : ${p1.id}, Your name is : ${p1.name} , Your Surname is : ${p1.surname}");

}