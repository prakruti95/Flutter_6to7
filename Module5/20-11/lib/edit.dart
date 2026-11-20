import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'jsonex.dart';

class EditScreen extends StatefulWidget {
  final dynamic id;
  final dynamic name;
  final dynamic surname;
  final dynamic mobile;
  final dynamic gender;
  final dynamic email;
  final dynamic pass;

  const EditScreen({
    super.key,
    required this.id,
    required this.name,
    required this.surname,
    required this.mobile,
    required this.gender,
    required this.email,
    required this.pass,
  });

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  void initState() {
    super.initState();
    name.text = widget.name?.toString() ?? "";
    surname.text = widget.surname?.toString() ?? "";
    mobile.text = widget.mobile?.toString() ?? "";
    gender.text = widget.gender?.toString() ?? "";
    email.text = widget.email?.toString() ?? "";
    pass.text = widget.pass?.toString() ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit : ${widget.id}")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: name, decoration: InputDecoration(hintText: "Enter Name")),
            TextField(controller: surname, decoration: InputDecoration(hintText: "Enter Surname")),
            TextField(controller: mobile, decoration: InputDecoration(hintText: "Enter Mobile")),
            TextField(controller: gender, decoration: InputDecoration(hintText: "Enter Gender")),
            TextField(controller: email, decoration: InputDecoration(hintText: "Enter Email")),
            TextField(controller: pass, decoration: InputDecoration(hintText: "Enter Password")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final navigator = Navigator.of(context);
                await http.post(
                  Uri.parse("https://shivaay.us.cc/riddhita/update1.php"),
                  body: {
                    "id": widget.id.toString(),
                    "name": name.text.toString(),
                    "surname": surname.text.toString(),
                    "mobile": mobile.text.toString(),
                    "gender": gender.text.toString(),
                    "email": email.text.toString(),
                    "password": pass.text.toString(),
                  },
                );
                navigator.pushReplacement(
                  MaterialPageRoute(builder: (context) => JsonEx()),
                );
              },
              child: Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
