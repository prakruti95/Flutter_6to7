class Abcd
{
  var name;
  static var clg="VVP";
  Abcd(var name,)
  {
    this.name=name;

  }
  display()
  {
    print("$name and $clg");
  }
  static change()
  {
    clg="Atmiya";
  }
}
void main()
{
  var a1 = Abcd("dhyey");
  var a2 = Abcd("jay");
  var a3 = Abcd("divyraj");
  Abcd.change();
  a1.display();
  a2.display();
  a3.display();



}