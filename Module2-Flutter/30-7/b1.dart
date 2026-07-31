import 'package:flutter/material.dart';

class B1 extends StatefulWidget {
  const B1({super.key});

  @override
  State<B1> createState() => _B1State();
}

class _B1State extends State<B1>
{
  int like=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center
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
