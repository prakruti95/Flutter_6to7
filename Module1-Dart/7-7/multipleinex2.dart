class A
{
  a()
  {
    print("A called");
  }
}
class B
{
  b()
  {
    print("B called");
  }
}
mixin C implements A,B
{
  c()
  {
    print("C called");
  }


}
class D implements C
{
  @override
  a() {
    print("B called");
  }

  @override
  b() {
    print("B called");
  }

  @override
  c() {
    print("B called");
  }

}

void main()
{
  D d = D();
  d.a();
  d.b();
  d.c();

}