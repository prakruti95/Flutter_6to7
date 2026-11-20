import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'edit.dart';
import 'jsonex.dart';

class Model extends StatelessWidget {
  final dynamic list;

  const Model({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (BuildContext context, int index) {
        var item = list[index];
        return ListTile(
          title: Text(item["name"]?.toString() ?? ""),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID: ${item["id"]?.toString() ?? ""}"),
              Text("Surname: ${item["surname"]?.toString() ?? ""}"),
              Text("Mobile: ${item["mobile"]?.toString() ?? ""}"),
              Text("Gender: ${item["gender"]?.toString() ?? ""}"),
              Text("Email: ${item["email"]?.toString() ?? ""}"),
            ],
          ),
          trailing: Wrap(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditScreen(
                        id: item["id"]?.toString() ?? "",
                        name: item["name"]?.toString() ?? "",
                        surname: item["surname"]?.toString() ?? "",
                        mobile: item["mobile"]?.toString() ?? "",
                        gender: item["gender"]?.toString() ?? "",
                        pass: item["password"]?.toString() ?? "",
                        email: item["email"]?.toString() ?? "",
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {
                  deletedata(context, item["id"]);
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        );
      },
    );
  }

  void deletedata(BuildContext context, dynamic id) async {
    final navigator = Navigator.of(context);
    await http.post(
      Uri.parse("https://shivaay.us.cc/riddhita/delete1.php"),
      body: {"id": id.toString()},
    );
    navigator.pushReplacement(
      MaterialPageRoute(builder: (context) => JsonEx()),
    );
  }
}
