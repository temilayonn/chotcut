// ignore_for_file: unnecessary_const, constant_identifier_names, unused_element

import 'dart:math';

import 'package:flutter/material.dart';

class Data {
  static List<String> image = [
    "assets/onboarding1.png",
    "assets/onboarding2.png",
    "assets/onboarding3.png",
  ];
}

class UpperTabBar {
  static List<String> upTabBar = [
    "assets/onboarding1.png",
    "assets/onboarding2.png",
    "assets/onboarding3.png",
  ];
}

class LowerTabBar {
  static List<String> downTabBar = [
    "assets/onboarding1.png",
    "assets/onboarding2.png",
    "assets/onboarding3.png",
  ];
}

class HomeData {
  static List<String> image = [
    "assets/homeslider.png",
    "assets/homeslider.png",
    "assets/homeslider.png",
  ];
}

class Choice {
  const Choice({required this.distance, required this.image});
  final String distance;

  final String image;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    distance: '34 mins away',
    image: "assets/brent.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/feedwell.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/woc.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/foodies.png",
  ),
  const Choice(
    distance: '12 mins away',
    image: "assets/fee.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/vanguardpharm.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/mile.png",
  ),
  const Choice(
    distance: '57 mins away',
    image: "assets/ace.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/foodm.png",
  ),
  const Choice(
    distance: '12 mins away',
    image: "assets/fee.png",
  ),
  const Choice(
    distance: '57 mins away',
    image: "assets/ace.png",
  ),
  const Choice(
    distance: '12 mins away',
    image: "assets/grandex.png",
  ),
  const Choice(
    distance: '12 mins away',
    image: "assets/fee.png",
  ),
  const Choice(
    distance: '12 mins away',
    image: "assets/foodco.png",
  ),
  const Choice(
    distance: '34 mins away',
    image: "assets/brent.png",
  ),
  const Choice(
    distance: '57 mins away',
    image: "assets/ace.png",
  ),
];

class BuyAgain {
  const BuyAgain(
      {required this.title, required this.price, required this.image});
  final String title;
  final String price;
  final String image;
}

const List<BuyAgain> buyAgain = const <BuyAgain>[
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/dogs.png",
    price: 'N300.00',
    title: 'Dogs food',
  ),
  const BuyAgain(
    image: "assets/butter.png",
    price: 'N800.00',
    title: 'Butter Spread',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
  const BuyAgain(
    image: "assets/plantainflour.png",
    price: 'N800.00',
    title: 'Plantain Flour',
  ),
];

class Category {
  const Category({required this.title, required this.image});
  final String title;

  final String image;
}

const List<Category> category = const <Category>[
  const Category(
    title: 'Baby Closet',
    image: "assets/baby.png",
  ),
  const Category(
    title: 'Flours & Oils',
    image: "assets/feedwell.png",
  ),
  const Category(
    title: 'Pet Supplies',
    image: "assets/dogs.png",
  ),
  const Category(
    title: 'Drinks & Water',
    image: "assets/water.png",
  ),
  const Category(
    title: 'Home Care',
    image: "assets/homecare.png",
  ),
  const Category(
    title: 'Veg & Fruits',
    image: "assets/veggies.png",
  ),
  const Category(
    title: 'Grains & Beans',
    image: "assets/grains.png",
  ),
  const Category(
    title: 'Health & Beauty',
    image: "assets/health&beauty.png",
  ),
  const Category(
    title: 'Home Care',
    image: "assets/homecare.png",
  ),
  const Category(
    title: 'Veg & Fruits',
    image: "assets/veggies.png",
  ),
  const Category(
    title: 'Grains & Beans',
    image: "assets/grains.png",
  ),
  const Category(
    title: 'Health & Beauty',
    image: "assets/health&beauty.png",
  ),
  const Category(
    title: 'Pet Supplies',
    image: "assets/dogs.png",
  ),
  const Category(
    title: 'Drinks & Water',
    image: "assets/water.png",
  ),
  const Category(
    title: 'Baby Closet',
    image: "assets/baby.png",
  ),
  const Category(
    title: 'Flours & Oils',
    image: "assets/feedwell.png",
  ),
  const Category(
    title: 'Grains & Beans',
    image: "assets/grains.png",
  ),
  const Category(
    title: 'Health & Beauty',
    image: "assets/health&beauty.png",
  ),
  const Category(
    title: 'Pet Supplies',
    image: "assets/dogs.png",
  ),
  const Category(
    title: 'Drinks & Water',
    image: "assets/water.png",
  ),
];

const List<Color> _kColors = <Color>[
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.pink,
  Colors.indigo,
  Colors.purple,
  Colors.blueGrey,
];

// List<StaggeredTile> _generateRandomTiles(int count) {
//   final rnd = Random();
//   return List.generate(
//       count,
//       (i) => StaggeredTile.count(
//           rnd.nextInt(4) + 1, rnd.nextInt(6).toDouble() + 1));
// }

// List<Color> _generateRandomColors(int count) {
//   final rnd = Random();
//   return List.generate(count, (i) => _kColors[rnd.nextInt(_kColors.length)]);
// }
