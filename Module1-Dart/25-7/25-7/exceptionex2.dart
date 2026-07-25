checkage(int age)
{
    if(age>=18)
      {
        print("Eligible to vote");
      }
    else
      {
        throw Exception("Not Eligible to vote");
      }
}
void main()
{
  checkage(15);

}