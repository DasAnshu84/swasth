import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:swastha/pages/page1.dart';
import 'package:swastha/pages/page2.dart';
import 'package:swastha/pages/page3.dart';
import 'package:swastha/pages/page4.dart';

import 'package:swastha/color_utils.dart';




class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pagecontroller = PageController(initialPage: 0);


  List<IconData> iconList = [
    //list of icons that required by animated navigation bar.
    Icons.home_rounded,
    Icons.bar_chart,
    Icons.account_balance_wallet,
    Icons.person,

  ];
  int _bottomNavIndex = 0;
  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    print(_bottomNavIndex);
    return Scaffold(
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: FloatingActionButton(
            backgroundColor: primarytheme,
            child: Icon(
              color: Colors.white,
              Icons.add,
            ),
            onPressed: () {

            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.white,
        //navigation bar
        icons: iconList, //list of icons
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: Colors.white,
        inactiveColor: Colors.grey,
        activeColor: primarytheme,

      ),
      body: Stack(
          children: [
            PageView.builder(
              controller: _pagecontroller,
              onPageChanged: (int page) {
                setState(() {
                  _bottomNavIndex = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[_bottomNavIndex % _pages.length];
              },
            ),
          ]
      ),
    );
  }
}


