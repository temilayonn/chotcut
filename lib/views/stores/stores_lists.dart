// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:chotcut/models/data.dart';

import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/utilities/transformer.dart';
import 'package:chotcut/widgets/locationGridView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class StoresList extends StatefulWidget {
  const StoresList({Key? key}) : super(key: key);

  @override
  _StoresListState createState() => _StoresListState();
}

class _StoresListState extends State<StoresList> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      backgroundColor: Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: (Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stores",
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
              LocationGridView(),
              SizedBox(height: 30),
              Container(
                height: 150,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.grey.withOpacity(0.5),
                ),
                child: (TransformerPageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  transformer: Transformer(),
                  scrollDirection: Axis.horizontal,
                  // pageController: controller,
                  curve: Curves.easeInBack,
                  itemCount: HomeData.image.length,
                  itemBuilder: (context, index) {
                    final urlImage = HomeData.image[index];
                    return Container(
                      padding: EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey[900],
                        image: DecorationImage(
                          image: AssetImage(urlImage),
                          fit: BoxFit.cover,
                          // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                        ),
                      ),
                    );
                  },
                )),
              ),
            ],
          ),
        )),
      ),
    );
  }

  AnimatedContainer buildDot({int? index, bool? isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2),
      margin: EdgeInsets.only(right: 9),
      // duration: kAnimationDuration,
      height: 4,
      width: 4,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xffFF0000) : Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
