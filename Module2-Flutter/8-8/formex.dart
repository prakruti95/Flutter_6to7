import 'package:flutter/material.dart';

class MyFormEx extends StatefulWidget
{
  const MyFormEx({super.key});

  @override
  State<MyFormEx> createState() => _MyFormExState();
}

class _MyFormExState extends State<MyFormEx>
{
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  var newuser;


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Form"),),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form
            (
            key: _formkey,
            child: Center
              (
                child: Column
                  (
                    children:
                    [
                        TextFormField(controller: name,decoration: InputDecoration(hintText: "Enter Name",border: OutlineInputBorder(),prefixIcon: Icon(Icons.person)),
                          validator: (value)
                          {
                          if(value!.isEmpty)
                            {
                                return "Please Enter Name";
                            }
                        },),
                        SizedBox(height: 10,),
                        TextFormField(controller: pass,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder(),prefixIcon: Icon(Icons.lock)),obscureText: true,validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return "Please Enter Password";
                          }
                        },),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: ()
                        {

                          String n = name.text.toString();
                          String p = pass.text.toString();
                          if(_formkey.currentState!.validate())
                            {
                              if(n=="dhyey" && p =="1234")
                              {
                                //Navigator.push(context,MaterialPageRoute(builder: (context) => CommonScreen()));
                                //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                                //print("Login Success");
                                // Fluttertoast.showToast(
                                //     msg: "This is Center Short Toast",
                                //     toastLength: Toast.LENGTH_SHORT,
                                //     gravity: ToastGravity.CENTER,
                                //     timeInSecForIosWeb: 1,
                                //     backgroundColor: Colors.red,
                                //     textColor: Colors.white,
                                //     fontSize: 16.0
                                // );
                              }
                              else
                              {
                                //print("Login Fail");
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));
                              }
                            }

                        }, child: Text("Login"))

                    ],
                  ),
              ),),
        ),
      );
  }

}
