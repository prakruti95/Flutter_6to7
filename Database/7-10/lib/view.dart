import 'package:abcd/dbhelper.dart';
import 'package:flutter/material.dart';

import 'add.dart';


class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData>
{
  late Dbhelper dbhelper = Dbhelper();

  @override
  void initState()
  {
    dbhelper.open();
  }

@override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddData()));
      },child: Icon(Icons.add),),
    );
  }
}