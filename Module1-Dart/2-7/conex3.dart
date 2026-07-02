//constructor : class having a same as a method name
// that it's called constructor
// Types of Constructor
// 1. default
// 2. parameterized
// 3. named


class Student
{
  var name;
  var surname;

  Student(var name,[var surname])
  {
      this.name = name;
      this.surname = surname;
  }

  display()
  {
    print("Your Name is $name");
    print("Your Surname is $surname");
  }

}
void main()
{
  var s1 = Student("dhyey","xyz");
  s1.display();
  
}