// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
      backgroundColor: Color(0xffEEEEEE),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: (450),
              height: MediaQuery.of(context).size.height * 0.33,
              child: ClipRRect(
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(40),
                //   bottomRight: Radius.circular(40),
                // ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF11700),
                        // gradient: LinearGradient(
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        //   colors: [Colors.orange, Colors.red, Colors.black],
                        // ),
                      ),
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hi, Layon",
                          style: GoogleFonts.overpass(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Lets personalize your settings",
                          style: GoogleFonts.overpass(
                              //  height: 39,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: buildSearchField('Looking for something?',
                                (val) {
                              // searchValues.add(val);
                              searchController.clear();
                            }, searchController),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 400,
                height: MediaQuery.of(context).size.height * 0.19,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.people_outline,
                            color: Colors.black,
                          ),
                          label: Text(
                            "ChoutSmoot",
                            style: GoogleFonts.overpass(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Track Order",
                            style: GoogleFonts.overpass(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star_outline_outlined,
                            color: Colors.black,
                          ),
                          label: Text(
                            "ChoutXpress",
                            style: GoogleFonts.overpass(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Favourites",
                            style: GoogleFonts.overpass(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Invite Friends",
                            style: GoogleFonts.overpass(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.money,
                              color: Colors.black,
                            ),
                            label: Text(
                              "Wallet",
                              style: GoogleFonts.overpass(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 380,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    label: Text(
                      "General Settings",
                      style: GoogleFonts.overpass(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 380,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Profile Settings",
                        style: GoogleFonts.overpass(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                width: 380,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Delivery Addresses",
                        style: GoogleFonts.overpass(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                width: 380,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.credit_card_outlined,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Payment Details",
                        style: GoogleFonts.overpass(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
