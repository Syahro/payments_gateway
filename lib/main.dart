import 'package:flutter/material.dart';
import 'package:paym_gate/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: backgroundColor,
      ),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
