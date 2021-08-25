// ignore_for_file: prefer_const_constructors

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/views/basket/basket.dart';
import 'package:chotcut/views/favourites/favourites.dart';
import 'package:chotcut/views/home/homeScreen.dart';
import 'package:chotcut/views/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 10,
            color: Color(0xFFDADADA).withOpacity(0.1),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/home.svg",
                    color: MenuState.home == selectedMenu
                        ? Colors.red
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: HomeScreen(),
                        direction: AxisDirection.up,
                      ),
                    );
                  }),
              IconButton(
                icon: SvgPicture.asset("assets/search.svg"),
                onPressed: () {},
                color: MenuState.search == selectedMenu
                    ? Colors.red
                    : inActiveIconColor,
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/basket.svg",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: Basket(),
                      direction: AxisDirection.up,
                    ),
                  );
                },
                color: MenuState.basket == selectedMenu
                    ? Colors.red
                    : inActiveIconColor,
              ),
              IconButton(
                icon: SvgPicture.asset("assets/fav.svg"),
                color: MenuState.favourites == selectedMenu
                    ? Colors.red
                    : inActiveIconColor,
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
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/profile.svg",
                    color: MenuState.profile == selectedMenu
                        ? Colors.red
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(
                        child: ProfilePage(),
                        direction: AxisDirection.up,
                      ),
                    );
                  }),
            ],
          )),
    );
  }
}
