// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChotXpress extends StatefulWidget {
  const ChotXpress({Key? key}) : super(key: key);

  @override
  _ChotXpressState createState() => _ChotXpressState();
}

class _ChotXpressState extends State<ChotXpress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "ChotXpress",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff343A40),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Image(image: AssetImage("assets/pana.png")),
              ),
              SizedBox(height: 45),
              Text(
                "ChotXpress is a loyalty programme that entitles it’s members to free delivcery on Chotcut orders and to access other exclusive promotions, rewards and benefits.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff343A40),
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF11700),
                        borderRadius: BorderRadius.circular(5)),
                    height: 40,
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined, color: Colors.white),
                        buttonWidget(
                            buttonAction: () {},
                            buttonColor: Color(0xffF11700),
                            buttonText: "Subscribe"),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
