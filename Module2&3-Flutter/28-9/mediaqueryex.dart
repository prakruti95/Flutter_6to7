import 'package:flutter/material.dart';

class MediaEx extends StatefulWidget {
  const MediaEx({super.key});

  @override
  State<MediaEx> createState() => _MediaExState();
}

class _MediaExState extends State<MediaEx>
{

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(title: Text("Data1"),),body: Center
      (
      child: Column
        (
        children:
        [
          ElevatedButton(onPressed: ()
          {
            print("width : $width");
            print("height : $height");
          }, child: Text("Abcd"))
        ],
        ),
    ),);
  }
}
