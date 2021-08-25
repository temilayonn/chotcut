// ignore_for_file: file_names, prefer_const_constructors

import 'package:chotcut/models/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoreyGridView extends StatelessWidget {
  const CategoreyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: GridView.count(
          reverse: true,
          crossAxisCount: 4,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          shrinkWrap: true,
          children: List.generate(
            category.length,
            (index) {
              return Container(
                height: 125,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      category[index].title,
                      style: GoogleFonts.ubuntu(
                          fontSize: 13,
                          color: Color(0xff343A40),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 100,
                      height: 65,
                      child: Image.asset(
                        category[index].image,
                        // fit: BoxFit.contain,
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
