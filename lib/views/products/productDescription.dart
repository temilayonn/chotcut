// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:chotcut/models/data.dart';
import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/widgets/productListView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                          child: Icon(Icons.arrow_back_ios)),
                    ),
                    SizedBox(
                      width: 330,
                      child: buildSearchField(
                        'foodco; dog food',
                        (val) {
                          // searchValues.add(val);
                          searchController.clear();
                        },
                        searchController,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.53,
                  width: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 300, top: 10),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 15,
                          ),
                          radius: 15,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: Image(
                          image: AssetImage("assets/Dogs2.png"),
                        ),
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'N800',
                                    style: GoogleFonts.overpass(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff343A40),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ('\nLucozade Boost'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff343A40),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  buttonWidget(
                                    buttonAction: () {},
                                    buttonColor: Colors.red,
                                    buttonText: "Add",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                subTitle2(
                  title: "You might also like",
                  color: Colors.black,
                ),
                SizedBox(height: 20),
                ProductListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
