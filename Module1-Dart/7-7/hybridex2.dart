import 'dart:io';

class A
{
    var a;
    geta(var a)
    {
      this.a=a;
    }
}
class B extends A
{
  var b;
  getb(var b)
  {
    this.b=b;
  }
}
class C extends A
{
  var c;
  getc(var c)
  {
    this.c=c;
  }
}

class D extends B implements C
{
  @override
  var c;

  @override
  getc(c) {
    this.c=c;
  }

  display()
  {
      print("$a");
      print("$b");
      print("$c");

      var ans = a*b*c;
      print(ans);
  }

}
void main()
{
   D d = D();
   d.geta(5);
   d.getb(2);
   d.getc(3);
   d.display();
}
