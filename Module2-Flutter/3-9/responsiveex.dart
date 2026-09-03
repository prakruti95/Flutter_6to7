import 'package:flutter/material.dart';

class Data3 extends StatefulWidget {
  const Data3({super.key});

  @override
  State<Data3> createState() => _Data3State();
}

class _Data3State extends State<Data3> {

  var width;
  var height;

  @override
  void initState()
  {
    print("Width is $width");
    print("Height is $height");
  }
  @override
  Widget build(BuildContext context)
  {
     width = MediaQuery.of(context).size.width;
     height = MediaQuery.of(context).size.height;

    return Scaffold(appBar: AppBar(title: Text("Responsive"),),body: Center
      (
      child: Column
        (
        children:
        [
            ElevatedButton(onPressed: ()
            {
              setState(() {
            print("Width is $width");
            print("Height is $height");

              });



            }, child: Text("Details1")),

      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu8SbNu-eU0nWgWohqdFT2QWfJgovOJ8qP3tCyZAH7x9X56SdsnxXCEyAH&s=10",width: width/2,height: height/2,)

        ],
      ),
    ),);
  }
}
