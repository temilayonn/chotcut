// ignore_for_file: unused_import, prefer_const_constructors

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:chotcut/utilities/custom_nav_bar.dart';
import 'package:chotcut/utilities/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: SafeArea(top: true, bottom: true, child: (Container())),
    );
  }
}
