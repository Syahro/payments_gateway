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
        body: Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/illustration.png',
                width: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Upgrade to Pro',
                style: titleTextStyle.copyWith(color: textWhiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
