import 'package:collection/collection.dart';
import 'package:flutter/material.dart';


typedef ColorEntry = DropdownMenuEntry<ColorLabel>;

enum ColorLabel
{
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;

  static final List<ColorEntry> entries = UnmodifiableListView<ColorEntry>(
    values.map<ColorEntry>(
          (ColorLabel color) => ColorEntry(
        value: color,
        label: color.label,
        enabled: color.label != 'Grey',
        style: MenuItemButton.styleFrom(foregroundColor: color.color),
      ),
    ),
  );
}




class DropdownMenuExample extends StatefulWidget
{
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  final TextEditingController colorController = TextEditingController();
  ColorLabel? selectedColor;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const .symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: .min,
                    mainAxisAlignment: .center,
                    children: <Widget>[
                      DropdownMenu<ColorLabel>(
                        initialSelection: ColorLabel.green,
                        controller: colorController,
                        requestFocusOnTap: true,
                        label: const Text('Color'),
                        onSelected: (ColorLabel? color) {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        dropdownMenuEntries: ColorLabel.entries,
                      ),
                      const SizedBox(width: 24),

                    ],
                  ),
                ),
              ),
              if (selectedColor != null )
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: .min,
                    mainAxisAlignment: .center,
                    children: <Widget>[
                      Text(
                        'You selected a ${selectedColor?.label} }',
                      ),
                      Padding(
                        padding: const .symmetric(horizontal: 5),

                      ),
                    ],
                  ),
                )

            ],
          ),
        ),
      ),
    );
  }
}