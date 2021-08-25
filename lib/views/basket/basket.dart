// ignore_for_file: unused_import, prefer_const_constructors

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/views/stores/stores_lists.dart';
import 'package:flutter/material.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.basket),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 154,
                    width: 155,
                    margin: EdgeInsets.only(bottom: 19.5),
                    child: Image.asset(
                      "assets/basket.png",
                      // color: Color(0xFF819272).withOpacity(0.5),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "No Orders Yet",
                    style: TextStyle(
                        color: Color(0xFF10151A),
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                width: 273,
                child: buttonWidget(
                    buttonAction: () {
                      Navigator.push(
                        context,
                        CustomPageRoute(
                          child: StoresList(),
                          direction: AxisDirection.up,
                        ),
                      );
                    },
                    buttonColor: Color(0xffF11700),
                    buttonText: "Explore Stores")),
          ],
        ),
      ),
    );
  }
}
