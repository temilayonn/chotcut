// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, import_of_legacy_library_into_null_safe

import 'package:chotcut/models/data.dart';
import 'package:chotcut/notifications/notification.dart';

import 'package:chotcut/utilities/constants.dart';
import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:chotcut/utilities/transformer.dart';
import 'package:chotcut/views/cart/cart.dart';
import 'package:chotcut/views/stores/stores_lists.dart';
import 'package:chotcut/widgets/categoryGridView.dart';
import 'package:chotcut/widgets/locationListView.dart';
import 'package:chotcut/widgets/productGridView.dart';
import 'package:chotcut/widgets/productListView.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
      backgroundColor: Color(0xffEEEEEE),
      body: SingleChildScrollView(child: body()),
    );
  }

  Column body() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: (200),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75, left: 20),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Good morning,',
                          style: GoogleFonts.overpass(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: ('\n Layon, what would you like to buy?'),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300, top: 20),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: NotificationScreen(),
                                direction: AxisDirection.up,
                              ),
                            );
                          },
                          icon: Icon(Icons.notification_add_outlined,
                              color: Colors.white)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CustomPageRoute(
                                child: Cart(),
                                direction: AxisDirection.up,
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 150),
                    child: buildSearchField(
                        'Search for your favourites Product', (val) {
                      // searchValues.add(val);
                      searchController.clear();
                    }, searchController),
                  ),
                ),
              ],
            ),
          ),
        ),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60, left: 140),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            HomeData.image.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
        ),
        Container(
          width: 380,
          height: 50,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                CustomPageRoute(
                  child: StoresList(),
                  direction: AxisDirection.up,
                ),
              );
            },
            child: subTitle(
              title: "Closest to you",
              color: Colors.black,
              onTapped: () {},
            ),
          ),
        ),
        LocationListView(),
        Container(
          width: 380,
          height: 40,
          child: subTitle2(
            title: "Buy again",
            color: Colors.black,
          ),
        ),
        ProductListView(),
        Container(
          width: 380,
          height: 50,
          child: subTitle2(
            title: "Latest Arrival",
            color: Colors.black,
          ),
        ),
        ProductListView(),
        Container(
          width: 380,
          height: 50,
          child: subTitle2(
            title: "Subsidy",
            color: Colors.black,
          ),
        ),
        ProductListView(),
        Container(
          width: 380,
          height: 50,
          child: subTitle2(
            title: "Categories",
            color: Colors.black,
          ),
        ),
        CategoreyGridView()
      ],
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
