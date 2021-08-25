// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class EachStore extends StatefulWidget {
  const EachStore({Key? key}) : super(key: key);

  @override
  _EachStoreState createState() => _EachStoreState();
}

class _EachStoreState extends State<EachStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          child: DefaultTabController(
            length: 9,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Color(0xffF11700)),
                  child: ButtonsTabBar(
                    radius: 1,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    // borderWidth: 2,
                    borderColor: Colors.transparent,
                    center: false,
                    unselectedDecoration:
                        BoxDecoration(color: Colors.transparent),
                    decoration: BoxDecoration(),
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    height: 30,
                    // ignore: prefer_const_literals_to_create_immutables
                    tabs: [
                      Tab(
                        text: "Grain",
                      ),
                      Tab(
                        text: "Drink",
                      ),
                      Tab(
                        text: "Noodles",
                      ),
                      Tab(
                        text: "Baby",
                      ),
                      Tab(
                        text: "Fashion",
                      ),
                      Tab(
                        text: "Pet Food",
                      ),
                      Tab(
                        text: "Beverages",
                      ),
                      Tab(
                        text: "Grocerey",
                      ),
                      Tab(
                        text: "Vegetables",
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: ButtonsTabBar(
                    //rradius: 12,
                    contentPadding: EdgeInsets.symmetric(horizontal: 13),
                    // borderWidth: 2,
                    borderColor: Colors.transparent,
                    center: true,
                    unselectedDecoration:
                        BoxDecoration(color: Colors.transparent),
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(40)),
                    unselectedLabelStyle: TextStyle(color: Colors.black),

                    labelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                    height: 30,
                    // ignore: prefer_const_literals_to_create_immutables
                    tabs: [
                      Tab(
                        text: "Palmwine",
                      ),
                      Tab(
                        text: "Vodka",
                      ),
                      Tab(
                        text: "Yoghurt",
                      ),
                      Tab(
                        text: "Milk",
                      ),
                      Tab(
                        text: "Soda",
                      ),
                      Tab(
                        text: "Wine",
                      ),
                      Tab(
                        text: "Water",
                      ),
                      Tab(
                        text: "ogogoro",
                      ),
                      Tab(
                        text: "Shekpe",
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   child: TabBarView(
                //     // ignore: prefer_const_literals_to_create_immutables
                //     children: <Widget>[
                //       Center(
                //         child: Icon(Icons.directions_bike),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_bike),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_bike),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_car),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_transit),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_bike),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_car),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_transit),
                //       ),
                //       Center(
                //         child: Icon(Icons.directions_bike),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
