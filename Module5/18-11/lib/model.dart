import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  var list;

  Model({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile
          (

            title: Text(list[index]["name"]),
            subtitle: Column(
              children:
              [
                Text(list[index]["surname"]),
                Text(list[index]["mobile"]),
                Text(list[index]["gender"]),
                Text(list[index]["email"]),

              ],
            ),

          );
      },
      itemCount: list.length,
    );
  }
}
