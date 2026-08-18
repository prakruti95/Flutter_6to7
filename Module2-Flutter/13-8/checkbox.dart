import 'package:flutter/material.dart';

class CheckboxEx extends StatefulWidget {
  const CheckboxEx({super.key});

  @override
  State<CheckboxEx> createState() => _CheckboxExState();
}

class _CheckboxExState extends State<CheckboxEx>
{
  bool first = false;
  bool second = false;
  bool third = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
            child: Column
              (
                children:
                [
                    CheckboxListTile(value: first,title: Text("Cricket"), onChanged:(value)
                    {

                      setState(() {

                          this.first=value!;

                      });
                    }),

                  CheckboxListTile(value: second,title: Text("Football"),
                      onChanged:(value)
                  {
                    setState(() {

                      this.second=value!;

                    });
                  }),
                  CheckboxListTile(value: third,title: Text("Movies") ,onChanged:(value)
                  {
                    setState(() {

                      this.third=value!;

                    });
                  })

                ],
              ),
          ),
      );
  }
}
