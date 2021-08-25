// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/models/data.dart';

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/stores/each_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationGridView extends StatelessWidget {
  const LocationGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      reverse: true,
      crossAxisCount: 4,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      shrinkWrap: true,
      children: List.generate(
        choices.length,
        (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                CustomPageRoute(
                  child: EachStore(),
                  direction: AxisDirection.left,
                ),
              );
            },
            child: Container(
              height: 125,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                // image: DecorationImage(
                //   image: AssetImage(
                //     buyAgain[index].image,
                //     // fit: BoxFit.contain,
                //   ),
                //   fit: BoxFit.cover,
                // ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Image.asset(
                      choices[index].image,
                      // fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xffEEEEEE)),
                    child: Center(
                      child: Text(
                        choices[index].distance,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA1A1A1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
