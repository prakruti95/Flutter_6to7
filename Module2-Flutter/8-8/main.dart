import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data1/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'formex.dart';

void main()
{
  runApp(MaterialApp(home:Splashscreen()));
}

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
    checkconnectivity();
    //Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyFormEx())));
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
            Lottie.asset('assets/food.json'),

            //Image.asset("assets/a.png")
          ],
        ),
      ),
    );
  }

   checkconnectivity()async
   {
      List<ConnectivityResult> connectivity = await Connectivity().checkConnectivity();
      if (connectivity.contains(ConnectivityResult.mobile))
      {
        //print("MD");
        Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginApp())));
      }
      else if (connectivity.contains(ConnectivityResult.wifi))
      {
        //print("WIFI");
        Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginApp())));
      }
      else if(connectivity.contains(ConnectivityResult.none))
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("NO INTERNET")));
      }
   }
}
