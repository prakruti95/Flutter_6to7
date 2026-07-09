class RBI
{
   rate()
   {
     return 0;
   }
}
class SBI extends RBI
{
  rate()
  {
    return 7;
  }
}
class ICICI extends RBI
{
  rate()
  {
    return 8;
  }
}
class AXIS extends RBI
{
  rate()
  {
    return 9;
  }
}
void main()
{
  var r = RBI();
  r=SBI();
  print(r.rate());
  r=ICICI();
  print(r.rate());
  r=AXIS();
  print(r.rate());
}