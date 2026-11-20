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
            leading: Image.network(list[index]["product_image"]),
            title: Text(list[index]["product_name"]),
            subtitle: Column(
              children:
              [
                Text(list[index]["product_price"]),
                Text(list[index]["final_discounted_price"]),
                Text(list[index]["features"]),
                Text(list[index]["ratings"]),
                Text(list[index]["quantity"]),
              ],
            ),

          );
      },
      itemCount: list.length,
    );
  }
}
