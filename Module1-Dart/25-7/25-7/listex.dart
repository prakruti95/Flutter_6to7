import 'dart:ffi';

void main()
{
  //var list = [];
  List list = [10,20,"a"];
  //print(list);
  //print(list[1]);
  // for(var data in list)
  // {
  //     print(data);
  // }

  List<dynamic> list2 = [1,2,3,"a",10];
  list2.add("b");
  list.addAll(list2);
  list.remove("b");
  //list.removeAt(0);
  //list.clear();
print(list);




}