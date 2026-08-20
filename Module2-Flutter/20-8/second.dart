import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget
{
  var tops;
  SecondScreen({required this.tops});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title: Text("${widget.tops}"),),);
  }
}
