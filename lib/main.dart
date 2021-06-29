import 'package:flutter/material.dart';
import 'package:paym_gate/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget checkOutButton() {
      return Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            width: 311,
            height: 51,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: textBlueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(71),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      );
    }

    Widget option(int index, String title, String subTitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index ? textBlueColor : textWhiteColor,
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Image.asset(
                selectedIndex == index
                    ? 'assets/images/check_two.png'
                    : 'assets/images/check_one.png',
                height: 18,
                width: 18,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: textWhiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    subTitle,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                price,
                style: subTitleTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: textWhiteColor,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/illustration.png',
              width: 267,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to',
                  style: titleTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Pro',
                  style: titleTextStyle.copyWith(
                    color: textBlueColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Go unlock all features and\nbuild your own business bigger',
              style: subTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              option(0, 'Monthly', 'Good for starting up', '\$20'),
              option(1, 'Quarterly', 'Focusing on building', '\$55'),
              option(2, 'Yearly', 'Steady company', '\$220'),
              selectedIndex == -1 ? SizedBox() : checkOutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
