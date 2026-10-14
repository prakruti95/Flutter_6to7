import 'package:flutter/material.dart';

class RadioButtonEx extends StatefulWidget {
  const RadioButtonEx({super.key});

  @override
  State<RadioButtonEx> createState() => _RadioButtonExState();
}

enum Gender {male,female}

class _RadioButtonExState extends State<RadioButtonEx>
{

  Gender _gender = Gender.male;

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

                    ListTile
                      (
                        leading: Radio(value:Gender.male,
                          onChanged:(value)
                        {
                            setState(() {
                              _gender = value!;
                            });
                        },
                          groupValue: _gender,),
                        title: Text("Male"),
                      ),
                    ListTile
                      (
                        leading: Radio(value: Gender.female,
                          onChanged:(value)
                        {
                              setState(() {
                                _gender = value!;
                              });
                        },
                        groupValue: _gender,),
                        title: Text("Female"),
                      )

                ],
              ),
          ),
      );
  }
}
