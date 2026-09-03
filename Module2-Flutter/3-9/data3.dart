import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'billpayment.dart';
import 'billpayment2.dart';

class MaterialAppEx extends StatefulWidget
{
  const MaterialAppEx({super.key});

  @override
  State<MaterialAppEx> createState() => _MaterialAppExState();
}

class _MaterialAppExState extends State<MaterialAppEx>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      home: MyData2(),
    );
  }
}
class MyData2 extends StatefulWidget
{
  const MyData2({super.key});

  @override
  State<MyData2> createState() => _MyData2State();
}

class _MyData2State extends State<MyData2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("My Data"),),
      body: Center(
        child: MaterialButton(
          child: Text('Bill Payment'),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => BillPaymentScreenMaterialApp()),
            );
          },
        ),
      ),
    );
  }
}
