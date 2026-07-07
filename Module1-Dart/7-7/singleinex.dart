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
void main()
{

    B b = B();
    b.a();
    b.b();
}