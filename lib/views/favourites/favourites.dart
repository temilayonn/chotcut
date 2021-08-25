// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers

import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/widgets/productGridView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourites),
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        child: SingleChildScrollView(
          child: (Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favourites",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff343A40),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.filter_list))
                      ],
                    )
                  ],
                ),
                ProductGridView(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
