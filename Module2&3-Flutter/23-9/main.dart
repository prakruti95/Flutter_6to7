import 'dart:io';
import 'package:alertex/main_Selection_AlertDialog.dart';
import 'package:alertex/main_TextAlertDialog.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home:MyApp()));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return WillPopScope(
        onWillPop: () async {
          return showconfirmAlertDialog(context);
        },
      child: Scaffold
        (
          appBar: AppBar(title: Text("My Data"),),
          body: Center
            (
              child: Column
                (
                  children:
                  [
                      ElevatedButton(onPressed: ()
                      {
                        showAlertDialog(context);
                      }, child: Text("Show alert")),
      
                    ElevatedButton(onPressed: ()
                    {
                      showconfirmAlertDialog(context);
                    }, child: Text("Show alert2"))
      
      
                  ],
                ),
            ),
        ),
    );
  }

  showAlertDialog(BuildContext context)
  {
    Widget topsbutton = ElevatedButton(
      child: Text("OK"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("This is an alert message."),
      actions:
      [
        topsbutton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }

  showconfirmAlertDialog(BuildContext context)
  {
    Widget topsbutton = ElevatedButton(
      child: Text("YES"),
      onPressed: ()
      {
        exit(0);
      },
    );
    Widget topsbutton2 = ElevatedButton(
      child: Text("NO"),
      onPressed: ()
      {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Confirm Alert"),
      content: Text("Are you you want to exit?"),
      actions:
      [
        topsbutton,
        topsbutton2
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }
}

