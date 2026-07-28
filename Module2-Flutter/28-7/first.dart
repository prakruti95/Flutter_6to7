import 'package:evening_batch/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
        (
          home:SecondScreen(),
          debugShowCheckedModeBanner: false,
        );
  }

}