void main()
{

  try
  {
    int data = 10~/0;
    print(data);
  }
  catch(e)
  {
    print(e);
  }
  finally
  {
        print("executed");
  }
}