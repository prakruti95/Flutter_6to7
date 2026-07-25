Future tops(int sec, String msg)
{
  final duration = Duration(seconds:sec);
  return Future.delayed(duration).then((value) => msg);
}

main()async
{
  print("Life");
  await tops(3,"Is").then((status)
  {
    print(status);
  });
  print("Good");
}
