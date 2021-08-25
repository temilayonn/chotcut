// ignore_for_file: prefer_const_constructors

import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // List<String> status = [
  //   "Estimated Delivery Due Date on 21 Dec",
  //   "Cancelled",
  //   "Delivered 31 Dec"
  // ];

  List<String> date = [
    " Recently",
    " 10.00 AM ",
    "22 Juny 2021 ",
  ];

  List<String> orderNo = [
    "Your order has been taken by the driver",
    "Topup for N100 was successful",
    "Your order has been canceled",
  ];
  // final status = [
  //   "Estimated Delivery Due Date on 21 Dec",
  //   "Cancelled",
  //   "Delivered 31 Dec"
  // ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentTab = 0;
  late Widget _widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      backgroundColor: Color(0xffF2F2F2),
      key: _scaffoldKey,
      // drawer: Drawer(
      //   child: DrawerWidget(
      //     openDraw: () {
      //       _scaffoldKey.currentState.openDrawer();
      //     },
      //   ),
      // ),
      // appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF424347),
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Notifications",
                      style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          color: Color(0xff343A40),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => OrderSummary(),
                    //   ),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.withOpacity(0.2))),
                    margin: EdgeInsets.only(bottom: 10, left: 24, right: 24),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/basket.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  orderNo[index],
                                  style: TextStyle(
                                    color: Color(0xff131313),
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  date[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff343A40),
                                  ),
                                ),
                                // SizedBox(height: 10),
                                // Text(
                                //   status[index],
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //     fontWeight: FontWeight.w400,
                                //     color: Color(0xfff2902f),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Divider(
                          color: Color(0xFFF5F5F5),
                          // color: Colors.grey,
                          thickness: 1,
                          height: 0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
