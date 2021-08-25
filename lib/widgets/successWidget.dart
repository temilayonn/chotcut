// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessSCreen extends StatefulWidget {
  const SuccessSCreen({Key? key}) : super(key: key);

  @override
  _SuccessSCreenState createState() => _SuccessSCreenState();
}

class _SuccessSCreenState extends State<SuccessSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 154,
                    width: 155,
                    margin: EdgeInsets.only(bottom: 19.5),
                    child: Image.asset(
                      "assets/success.png",
                      // color: Color(0xFF819272).withOpacity(0.5),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Thank you",
                    style: GoogleFonts.ubuntu(
                        color: Color(0xFF10151A),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Your order will be delivered in one hour. \nYou can track the delivery in the \norder section.",
                      style: GoogleFonts.ubuntu(
                        color: Color(0xff343A40),
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 6),
              width: 273,
              child: buttonWidget(
                  buttonAction: () {},
                  buttonColor: Color(0xffF11700),
                  buttonText: "Track Your Order"),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CustomPageRoute(
                    child: HomeScreen(),
                    direction: AxisDirection.down,
                  ),
                );
              },
              child: Text(
                "Continue Shopping",
                style: GoogleFonts.ubuntu(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF10151A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
