import 'package:flutter/material.dart';
import 'package:test123456/second.dart';

class MyAppData extends StatefulWidget {
  const MyAppData({super.key});

  @override
  State<MyAppData> createState() => _MyAppDataState();
}

class _MyAppDataState extends State<MyAppData>
{
  bool myvalue = false;
  String mydata ="SWITCH IS OFF";
  TextEditingController data = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("Switch Example"),),
      
      body: Center
        (
        
          child: Column
            (
              children: 
              [
                  Switch(value: myvalue, onChanged:(value)
                  {
                      setState(() {

                        myvalue = value;
                        if(mydata=="SWITCH IS OFF")
                        {
                          setState(() {
                            mydata="SWITCH IS ON";
                          });

                        }
                        else
                        {
                          setState(() {
                            mydata="SWITCH IS OFF";
                          });


                        }

                      });
                  },
            activeColor: Colors.blue,
            activeThumbColor: Colors.yellow,
            inactiveThumbColor: Colors.orange,
            inactiveTrackColor: Colors.black,),

                Text("$mydata"),

                TextField(controller:data,decoration: InputDecoration(hintText: "Enter Data"),),
                TextButton(onPressed: ()
                {
                  String data1 = data.text.toString();
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen( tops: data1,)));
                }, child: Text("OK"))
                
              ],



            ),
        ),
    
    );
  }
}
