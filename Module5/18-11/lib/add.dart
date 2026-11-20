import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsoncrud1/jsonex.dart';

class AddData extends StatefulWidget
{
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData>
{
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(),
    body: Center(child: Column(children:
    [
      TextField(controller:name,decoration: InputDecoration(hintText: "Enter Name"),),
      TextField(controller:surname,decoration: InputDecoration(hintText: "Enter Surname"),),
      TextField(controller:mobile,decoration: InputDecoration(hintText: "Enter Mobile"),),
      TextField(controller:gender,decoration: InputDecoration(hintText: "Enter Gender"),),
      TextField(controller:email,decoration: InputDecoration(hintText: "Enter Email"),),
      ElevatedButton(onPressed: ()
      {
        http.post(Uri.parse("https://shivaay.us.cc/riddhita/insert1.php"),
            body:
            {
                "name":name.text.toString(),
                "surname":surname.text.toString(),
                "mobile":mobile.text.toString(),
                "gender":gender.text.toString(),
                "email":email.text.toString(),
            }).then((value)
            {
              print(value.body);
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => JsonEx()));
            });
        }, child: Text("Insert"))
    ],),),);
  }
}
