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
class C extends B
{
  c()
  {
    print("C called");
  }
}
class D extends C
{
  d()
  {
    print("D called");
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