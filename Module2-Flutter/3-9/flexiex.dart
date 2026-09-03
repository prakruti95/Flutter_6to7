import 'package:flutter/material.dart';

class FlexibleEx extends StatefulWidget {
  const FlexibleEx({super.key});

  @override
  State<FlexibleEx> createState() => _FlexibleExState();
}

class _FlexibleExState extends State<FlexibleEx> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Row(
          children: [
            // This widget takes up exactly 50px, no matter what
            Container(
              width: 50,
              color: Colors.blue,
              child: const Text('Fixed'),
            ),

            // This widget takes up only the space its text needs.
            // If the text grows too long, it won't crash/overflow; it will resize safely.
            Flexible(
              fit: FlexFit.loose, // Default behavior
              child: Container(
                color: Colors.green,
                child: const Text('Flexible Loose Contentfjsdkljfsldkfjsdkfjsdkfjsdkfsjdkfjdsgkdflgkdflgkfdlgkdflgkdflgkfdglfk'),
              ),
            ),

            // This widget takes twice the remaining space allocation compared to a flex of 1
            Flexible(
              flex: 2,
              fit: FlexFit.tight, // Forces container to stretch and fill space
              child: Container(
                color: Colors.orange,
                child: const Text('Flexible Tight (Acts like Expanded)'),
              ),
            ),
          ],
        ),
      );
  }
}
