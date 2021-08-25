// ignore: file_names
// ignore: file_names

// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/products/productDescription.dart';
import 'package:flutter/material.dart';
import 'package:chotcut/models/data.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListView extends StatelessWidget {
  ProductListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 150,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 9.0,
          children: List.generate(
            buyAgain.length,
            (index) {
              return Container(
                // height: 150,
                // width: 145,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
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
                        height: 60,
                        child: Image.asset(
                          buyAgain[index].image,
                          // fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        buyAgain[index].title,
                        style: GoogleFonts.ubuntu(
                            fontSize: 11,
                            color: Color(0xff343A40),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // RichText(
                    //   text: TextSpan(
                    //     children: <TextSpan>[
                    //       TextSpan(
                    //         text: buyAgain[index].price,
                    //         style: GoogleFonts.ubuntu(
                    //           fontSize: 14,
                    //           fontWeight: FontWeight.w700,
                    //           color: Colors.black,
                    //         ),
                    //       ),
                    //       TextSpan(
                    //         text: buyAgain[index].title,
                    //         style: TextStyle(
                    //           fontSize: 11,
                    //           fontWeight: FontWeight.w400,
                    //           color: Colors.grey,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 50),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Text(
                    //             buyAgain[index].price,
                    //             style: GoogleFonts.ubuntu(
                    //                 fontSize: 14,
                    //                 color: Color(0xff343A40),
                    //                 fontWeight: FontWeight.w700),
                    //           ),
                    //           IconButton(
                    //             onPressed: () {},
                    //             icon: Icon(
                    //               Icons.favorite_outline,
                    //               size: 10,
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //       //  SizedBox(height: 10),
                    //       Text(
                    //         buyAgain[index].title,
                    //         style: GoogleFonts.ubuntu(
                    //             fontSize: 10,
                    //             color: Color(0xff343A40),
                    //             fontWeight: FontWeight.w400),
                    //       ),
                    //     ],
                    //   ),
                    // )
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
