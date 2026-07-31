import 'package:flutter/material.dart';

class A1 extends StatelessWidget {
  const A1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container
        (
          color: Colors.lightBlue,
          child: Row
            (
                children:
                [
                  CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfVxpoPtmMCP85FyUIwmiQ4I2z7uPVfSYJCLNEGux-lomROhhOjkOr33DBra-IOsz_WcEky_Td0VjQbNAp8m0PGVbXnqhY0aA30IdGw&s=10"),radius: 50,),
                  Column(children:
                  [
                    Text("Name: Virat",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Profession : Cricketer")
                  ],)
                ],
            ),
        ),
    );
  }
}
