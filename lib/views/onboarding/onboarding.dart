// ignore_for_file: prefer_const_constructors

import 'package:chotcut/models/data.dart';

import 'package:chotcut/utilities/custom_page_route.dart';
import 'package:chotcut/utilities/transformer.dart';
import 'package:chotcut/views/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);
  final String title, subtitle, image;
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  late String bgImg;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final TransformerPageController controller =
    //     TransformerPageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: TransformerPageView(
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        transformer: Transformer(),
        scrollDirection: Axis.horizontal,
        // pageController: controller,
        curve: Curves.easeInBack,
        itemCount: Data.image.length,
        itemBuilder: (context, index) {
          final urlImage = Data.image[index];
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      Data.image.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CustomPageRoute(
                            child: SplashScreen(),
                            direction: AxisDirection.up,
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  AnimatedContainer buildDot({int? index, bool? isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2),
      margin: EdgeInsets.only(right: 9),
      // duration: kAnimationDuration,
      height: 4,
      width: 110,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xffFF0000) : Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
