import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  var list;

  Model({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(list[index]["customer_Firstname"]),
          subtitle: Text(list[index]["customer_Lastname"]),
        );
      },
      itemCount: list.length,
    );
  }
}
