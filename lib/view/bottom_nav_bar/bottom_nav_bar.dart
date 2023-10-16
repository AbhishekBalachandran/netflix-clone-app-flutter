import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/view/coming_soon/coming_soon.dart';
import 'package:netflix_clone/view/download/download.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/more/more.dart';
import 'package:netflix_clone/view/search/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selected_index = 0;
  List pages = [
    HomeScreen(),
    Search(),
    ComingSoon(),
    Download(),
    More()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selected_index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstant.backgroundColor,
          selectedItemColor: ColorConstant.primaryTextColor,
          unselectedItemColor: ColorConstant.primaryTextColor,
          currentIndex: _selected_index,
          onTap: _onItemTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                ),
                label: 'Coming soon'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download_outlined,
                ),
                label: 'Downloads'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'More'),
          ]),
    );
  }
}
