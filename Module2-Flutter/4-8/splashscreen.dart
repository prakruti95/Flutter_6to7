import 'dart:async';

import 'package:evening_batch/formex.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
{
  @override
  void initState()
  {
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyFormEx())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Center
          (
            child: Column
              (
                children: 
                [
                    //Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfVxpoPtmMCP85FyUIwmiQ4I2z7uPVfSYJCLNEGux-lomROhhOjkOr33DBra-IOsz_WcEky_Td0VjQbNAp8m0PGVbXnqhY0aA30IdGw&s=10")
                    Image.asset("assets/a.png")
                ],
              ),
          ),
      );
  }
}
