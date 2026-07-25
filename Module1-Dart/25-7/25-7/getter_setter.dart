class Data extends FormatException
{
    var _name;
    var _email;

  get name => _name;

  set name(value) {
    _name = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }
}
void main()
{
  Data d = Data();
  d.name="dhyey";
  d.email="d@gmail.com";

  print("${d.name} and ${d.email}");
}
