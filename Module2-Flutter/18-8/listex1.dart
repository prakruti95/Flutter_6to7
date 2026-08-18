import 'package:flutter/material.dart';

class StaticList extends StatefulWidget
{
  const StaticList({super.key});

  @override
  State<StaticList> createState() => _StaticListState();
}

class _StaticListState extends State<StaticList>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Static List"),),
        body: ListView
          (
            children:
            [
                //Card(color: Colors.blue,shape: Border.all(),)
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.delete),),
              ListTile(leading: Icon(Icons.ten_k),title: Text("ABCD"),subtitle: Text("PQRS"),trailing: Icon(Icons.edit),)

            ],
          ),
      );
  }
}
