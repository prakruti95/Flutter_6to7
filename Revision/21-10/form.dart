import 'package:flutter/material.dart';

class FormEx extends StatefulWidget {
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Form"),),body: Center
      (
      child: Form(
        key: _formkey,
        child: Column(children:
        [
          TextFormField(controller:email,decoration: InputDecoration(hintText: "Enter Email"),validator: (value)
          {
            if(value!.isEmpty)
              {
                  return "Please enter email";
              }
          },),
          TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Password"),validator: (value)
          {
            if(value!.isEmpty)
            {
              return "Please enter password";
            }
          }),
          ElevatedButton(onPressed: ()
          {
              String e = email.text.toString();
              String p = pass.text.toString();
              if(_formkey.currentState!.validate())
                {
                  if(e=="a@gmail.com" && p=="1234")
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                  }
                  else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Credentials")));
                  }
                }


          }, child: Text("Login"))
        ],),
      ),
      ),);
  }
}
