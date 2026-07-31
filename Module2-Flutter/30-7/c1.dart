import 'package:flutter/material.dart';

class C1 extends StatefulWidget {
  const C1({super.key});

  @override
  State<C1> createState() => _C1State();
}

class _C1State extends State<C1>
{
  bool _ishappy=true;
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
        child: Column
          (
          children:
          [
            Text
              (
              _ishappy ? '😊 Happy' : '😔 Sad',
                style: TextStyle(fontSize: 24),
              ),
            ElevatedButton(
                onPressed: ()
              {
                setState(() {

                  _ishappy = !_ishappy;

                });
              }, child: Text("Change Mood"))
          ],
        ),
      );
  }
}
