class Person
{
  var name;
  var surname;

  Person(var name,var surname)
  {
    this.name = name;
    this.surname =surname;
  }

  display()
  {
    print("$name and $surname");
  }
}
void main()
{
    var p = Person("dhyey", "xyz");
    p.display();
}