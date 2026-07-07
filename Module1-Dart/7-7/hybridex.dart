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
class D extends B implements C
{
  d()
  {
    print("D called");
  }

  @override
  c()
  {
    print("C called");
  }
}
void main()
{
    D d = D();
    d.a();
    d.b();
    d.c();
    d.d();
}
