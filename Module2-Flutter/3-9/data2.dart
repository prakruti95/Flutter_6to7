import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'billpayment.dart';

class CupertinoAppEx extends StatefulWidget
{
  const CupertinoAppEx({super.key});

  @override
  State<CupertinoAppEx> createState() => _CupertinoAppExState();
}

class _CupertinoAppExState extends State<CupertinoAppEx>
{
  @override
  Widget build(BuildContext context)
  {
    return CupertinoApp
      (
        home: MyData(),
      );
  }
}
class MyData extends StatefulWidget
{
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData>
{
  @override
  Widget build(BuildContext context)
  {
    return CupertinoPageScaffold
      (
        child: Center(
          child: CupertinoButton(
            child: Text('Bill Payment'),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => BillPaymentScreenCupertino()),
              );
            },
          ),
        ),
    );
  }
}
