import 'package:evening_batch/formex.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'a1.dart';
import 'b1.dart';
import 'c1.dart';
import 'd1.dart';

class CommonScreen extends StatefulWidget
{
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen>
{
  late SharedPreferences sharedPreferences;
  var data;
  @override
  void initState()
  {
    checkdata();
    
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Common Screen : $data"),actions:
        [
          IconButton(onPressed: ()
          {
            sharedPreferences.setBool("tops", true);
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyFormEx()));
          }, icon: Icon(Icons.logout))
        ],),
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

  void checkdata() async
  {
    sharedPreferences = await SharedPreferences.getInstance();

      setState(() {
        data = sharedPreferences.getString("name");
      });
  }
}
