import 'package:flutter/material.dart';

import 'a1.dart';
import 'b1.dart';
import 'c1.dart';
import 'd1.dart';

class CommonScreen extends StatelessWidget
{
  const CommonScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Common Screen"),),
        body: SingleChildScrollView(
          child: Center
            (
              child: Column
                (
                  children:
                  [
                        A1(),
                        SizedBox(height: 10,),
                        B1(),
                        SizedBox(height: 10,),
                        C1(),
                        SizedBox(height: 10,),
                        D1()
                  ],
                ),
            ),
        ),
      );
  }
}
