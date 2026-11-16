import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;

import 'model.dart';

class JsonEx extends StatefulWidget {
  const JsonEx({super.key});

  @override
  State<JsonEx> createState() => _JsonExState();
}

class _JsonExState extends State<JsonEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Data")),
      body: FutureBuilder(future: getdata(), builder: (context,snapshot)
      {
        if(snapshot.hasError)
        {
          print("Network not found");
        }
        if(snapshot.hasData)
        {
          return Model(list:snapshot.data);
        }
        return CircularProgressIndicator();
      }),
    );
  }

   getdata() async
   {
     var url = "https://shivaay.us.cc/MiniProject/view_customer.php";
     var url2=Uri.parse(url);
     var resp = await http.get(url2);
     return jsonDecode(resp.body);
   }
}
