import 'package:flutter/material.dart';

class Test1 extends StatefulWidget
{
  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  int like=0;

  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
          appBar: AppBar(title: Text("Test 1"),),
          body: Center
            (
              child: Column
                (
                  children:
                  [
                      Text("Likes: $like"),
                      ElevatedButton(onPressed: ()
                      {
                          setState(() {
                            like++;
                          });

                            print(like);
                      }, child: Text("Click Me"))

                  ],
                ),
            ),
        );
  }
}