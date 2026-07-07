class MyColor
{
    var color = "black";
}
class MyColor2 extends MyColor
{
    var color = "white";

    display()
    {
      print(color);
      print(super.color);
    }
}
void main()
{
  MyColor2 m = MyColor2();
  m.display();
}