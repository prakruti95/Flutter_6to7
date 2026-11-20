import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;

import 'add.dart';
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
      body: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error loading data"));
          }
          if (snapshot.hasData && snapshot.data != null) {
            return Model(list: snapshot.data);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddData()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<dynamic> getdata() async {
    var url = "https://shivaay.us.cc/riddhita/view1.php";
    var url2 = Uri.parse(url);
    var resp = await http.get(url2);
    return jsonDecode(resp.body);
  }
}
