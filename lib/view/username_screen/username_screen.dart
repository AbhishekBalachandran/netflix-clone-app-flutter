import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/utils/databases/database.dart';
import 'package:netflix_clone/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

import '../../utils/images-constants/image_constants.dart';

class UsernameScreen extends StatelessWidget {
  UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.backgroundColor,
        title: Container(
          height: 37.08,
          width: 138,
          child: Image.asset(ImageConstant.logo),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 24,
              width: 24,
              child: Image.asset(ImageConstant.pencil),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 140,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: Database.profile.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  )),
                  child: Container(
                    width: 100,
                    height: 121,
                    child: Column(children: [
                      Container(
                        height: 92,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    Database.profile[index]['image']))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          Database.profile[index]['name'],
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
