import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/utils/databases/database.dart';
import 'coming_soon_container/coming_soon_container.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: ColorConstant.bannerColor,
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      color: ColorConstant.primaryTextColor,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 100,
                  color: ColorConstant.containerGrey,
                  child: Row(children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Rectangle 20.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'New Arrival',
                          style: TextStyle(
                              color: ColorConstant.primaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'El Chapo',
                          style: TextStyle(
                              color: ColorConstant.primaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Nov 6',
                          style: TextStyle(
                            color: ColorConstant.primaryTextColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Database.comingSoonVideos.length,
              itemBuilder: (context, index) => ComingSoonContainer(index: index,)
            )
          ]),
        ),
      ),
    );
  }
}
