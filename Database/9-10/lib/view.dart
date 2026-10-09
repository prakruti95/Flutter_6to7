import 'package:abcd/dbhelper.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'edit.dart';


class ViewData extends StatefulWidget
{
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData>
{
  late Dbhelper dbhelper = Dbhelper();
  List<Map> slist = [];
  @override
  void initState()
  {
    dbhelper.open();
    setState(() {
      getdata();
    });

  }

@override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(actions:
      [
        IconButton(onPressed: ()
        {
          setState(() {
            getdata();
          });
        }, icon: Icon(Icons.refresh))
      ],),
      body:Center
        (
          child: SingleChildScrollView
            (
            child: Column
              (
                children:slist.map((tops)
                {

                  return Card
                    (
                      child: ListTile
                        (
                        leading:Icon(Icons.person),
                        title: Text(tops["name"]),
                        subtitle:Text(tops["email"]),
                        trailing: Wrap(children:
                        [
                          IconButton(onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditData(n:tops["name"],e:tops["email"],p:tops["password"])));
                          }, icon: Icon(Icons.edit)),
                          IconButton(onPressed: ()
                          {
                            dbhelper.db.rawDelete("delete from students where email = ?",[tops["email"]]);
                            setState(() {
                              getdata();
                            });
                           Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewData()));
                          }, icon: Icon(Icons.delete))
                        ],),
                      )
                  );
                }).toList()

            ),
            ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddData()));
      },child: Icon(Icons.add),),
    );
  }

  getdata()
  {
    setState(() {
      Future.delayed(Duration(milliseconds: 500),()async
      {
        slist = await dbhelper.db.rawQuery('SELECT * FROM students');
        setState(()
        {

        });
      });
    });

  }
  }
