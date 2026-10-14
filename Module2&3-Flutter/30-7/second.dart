import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tops App"), backgroundColor: Colors.blueGrey),
      body: SingleChildScrollView(
        child: Center
          (
            child: Column
              (
                children:
                [
                  SizedBox(height: 20,),
                  Image.network("https://media.gettyimages.com/id/108996058/photo/bangalore-india-sachin-tendulkar-of-india-poses-during-a-portrait-session-ahead-of-the-2011.jpg?s=612x612&w=gi&k=20&c=UwEJoIRGMaf4_mWsnWsl0sfwk_qtejMfcIpnBkK_bPM=",width: 250,height: 250,),
                  Text(
                    "Sachin",
                    style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold,color: Colors.amber),
                  ),
                  SizedBox(height: 20,),
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuVKep6rnUQpxSxj_tBnDb0-kJfstLT37gl3sZcT3r91vFnL7Skn23UPOa&s=10",width: 250,height: 250,),
                  Text(
                    "Virat",
                    style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                  ),
                  SizedBox(height: 20,),
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuVKep6rnUQpxSxj_tBnDb0-kJfstLT37gl3sZcT3r91vFnL7Skn23UPOa&s=10",width: 250,height: 250,),
                  Text(
                    "Virat",
                    style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                  ),
        
        
                ],
              ),
          ),
      )
    );
  }
}
