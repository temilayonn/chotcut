// ignore_for_file: file_names

import 'package:chotcut/models/data.dart';

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/stores/each_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationListView extends StatelessWidget {
  const LocationListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 105,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 9.0,
          children: List.generate(
            choices.length,
            (index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(
                            child: EachStore(),
                            direction: AxisDirection.left,
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 70,
                        child: Image.asset(
                          choices[index].image,
                          // fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 20,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
