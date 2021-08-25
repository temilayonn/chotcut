// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_label

import 'package:another_flushbar/flushbar.dart';

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/views/checkout/checkout.dart';
import 'package:chotcut/views/favourites/favourites.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Your cart",
                      style: TextStyle(
                          color: Color(0xff343A40),
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "*Drag item left to delete",
                  style: TextStyle(
                      color: Color(0xff090F47).withOpacity(0.5),
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "2 Items in your cart ",
                      style: TextStyle(
                          color: Color(0xff090F47).withOpacity(0.5),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  label: Text(
                    "*Add more",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: Favourites(),
                        direction: AxisDirection.up,
                      ),
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (BuildContext, int) {
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.15,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(10)),
                      height: 80,
                      width: 380,
                      child: ListTile(
                        trailing: CircleAvatar(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          radius: 10,
                          backgroundColor: Colors.red,
                        ),
                        leading: Image(
                          image: AssetImage(
                            "assets/beer.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          'N800',
                          style: GoogleFonts.overpass(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                            'Beer Drink Organic Drink And \nPaparazzi Spotlight'),
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    actions: <Widget>[
                      IconSlideAction(
                        //  caption: 'Archive',
                        color: Color(0xff32BA7C),
                        icon: Icons.favorite_outline_outlined,
                        foregroundColor: Colors.white,
                        // onTap: () => Flushbar(
                        //   title: "Move",
                        // ),
                      ),
                      // IconSlideAction(
                      //   caption: 'Share',
                      //   color: Colors.indigo,
                      //   icon: Icons.share,
                      //   onTap: () => Flushbar(
                      //     title: "Read",
                      //   ),
                      // ),
                    ],
                    secondaryActions: <Widget>[
                      // IconSlideAction(
                      //   caption: 'More',
                      //   color: Colors.black45,
                      //   icon: Icons.more_horiz,
                      //   onTap: () => Flushbar(
                      //     title: "more",
                      //   ),
                      // ),
                      IconSlideAction(
                        //  caption: 'Delete',
                        color: Color(0xff343A40),
                        icon: Icons.delete_sharp,
                        // onTap: () => Flushbar(
                        //   title: "Delete",
                        // ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
              ),
            ),
            Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF11700)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Proceed to Checkout',
                      style: GoogleFonts.overpass(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: buttonWidget(
                        buttonAction: () {
                          Navigator.push(
                            context,
                            CustomPageRoute(
                              child: CheckOut(),
                              direction: AxisDirection.down,
                            ),
                          );
                        },
                        buttonColor: Color(0xff000000).withOpacity(0.2),
                        buttonText: "N2,500"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
