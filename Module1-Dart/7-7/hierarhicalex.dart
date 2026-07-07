class A
{
  a()
  {
    print("A called");
  }
}
class B extends A
{
  b()
  {
    print("B called");
  }
}

class C extends A
{

  c()
  {
    print("C called");
  }
}

void main()
{
    B b = B();
    C c = C();
    b.b();
    b.a();
    c.a();
    c.c();

}