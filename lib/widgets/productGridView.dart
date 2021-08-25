// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:chotcut/models/data.dart';

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/products/productDescription.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.99,
      child: GridView.count(
        reverse: true,
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        shrinkWrap: true,
        children: List.generate(
          buyAgain.length,
          (index) {
            return Column(
              children: [
                Container(
                  height: 119,
                  // width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 80,
                        ),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          radius: 10,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CustomPageRoute(
                              child: ProductDescription(),
                              direction: AxisDirection.up,
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 50,
                          child: Image.asset(
                            buyAgain[index].image,
                            // fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            buyAgain[index].price,
                            style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                color: Color(0xff343A40),
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            child: Icon(Icons.favorite_outline,
                                size: 12, color: Colors.black),
                            radius: 10,
                            backgroundColor: Color(0xffEEEEEE),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          buyAgain[index].title,
                          style: GoogleFonts.ubuntu(
                              fontSize: 11,
                              color: Color(0xff343A40),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
