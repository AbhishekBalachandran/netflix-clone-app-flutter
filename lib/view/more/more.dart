import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/utils/images-constants/image_constants.dart';

import '../../utils/databases/database.dart';
import '../home_screen/home_screen.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    List settingList = [
      'App Settings',
      'Account',
      'Help',
      'Sign Out',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: ListView(children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Database.profile.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  )),
                  child: index == Database.profile.length - 1
                      ? Container(
                          width: 75,
                          height: 100,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.primaryTextColor),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  color: ColorConstant.primaryTextColor,
                                  size: 30,
                                )),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          width: 75,
                          height: 100,
                          child: Column(children: [
                            Container(
                              height: 60,
                              width: 65,
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 14,
                width: 14,
                child: Image.asset(ImageConstant.pencil),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Manage Profiles',
                style: TextStyle(
                  color: ColorConstant.primaryTextColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: double.infinity,
            color: Color.fromARGB(255, 26, 26, 26),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Group 71.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tell friends about Netflix.',
                      style: TextStyle(
                          color: ColorConstant.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt .',
                  style: TextStyle(
                    color: ColorConstant.primaryTextColor,
                    fontSize: 14,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.white))),
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: ColorConstant.primaryTextColor,
                          fontSize: 12,
                          // decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: width * 0.60,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Copy Link',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Background color
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.whatsappLogo),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 25,
                    decoration:
                        BoxDecoration(color: ColorConstant.containerGrey),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.fbLogo),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 25,
                    decoration:
                        BoxDecoration(color: ColorConstant.containerGrey),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.gmailLogo),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 25,
                    decoration:
                        BoxDecoration(color: ColorConstant.containerGrey),
                  ),
                  Container(
                    height: 35,
                    width: 30,
                    child: Column(children: [
                      Icon(
                        Icons.more_horiz,
                        size: 20,
                        color: ColorConstant.primaryTextColor,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                            color: ColorConstant.primaryTextColor,
                            fontSize: 12),
                      )
                    ]),
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: ColorConstant.primaryTextColor,
                ),
                Text(
                  'My List',
                  style: TextStyle(color: ColorConstant.primaryTextColor),
                )
              ],
            ),
          ),
          Divider(
            color: ColorConstant.primaryTextColor,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: settingList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Text(
                    settingList[index],
                    style: TextStyle(color: ColorConstant.primaryTextColor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
        ]),
      ),
    );
  }
}
