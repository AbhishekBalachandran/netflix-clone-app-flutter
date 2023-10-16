import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/utils/databases/database.dart';
import 'package:netflix_clone/utils/images-constants/image_constants.dart';
import 'package:netflix_clone/view/previews/previews.dart';
import '../container/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 415,
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: .9,
                          enlargeCenterPage: true,
                          height: 400.0),
                      itemCount: Database.carousel.length,
                      itemBuilder: (context, index, realIndex) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(Database.carousel[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(ImageConstant.netfliXIcon),
                              ),
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConstant.primaryTextColor),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConstant.primaryTextColor),
                              ),
                              Text(
                                'My List',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: ColorConstant.primaryTextColor),
                              ),
                            ],
                          ),
                          Text(
                            '#2 in Nigeria Today',
                            style: TextStyle(
                              color: ColorConstant.primaryTextColor,
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: ColorConstant.primaryTextColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(color: ColorConstant.primaryTextColor),
                      )
                    ],
                  ),
                  Container(
                    height: 46,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,
                          size: 35,
                        ),
                        Center(
                          child: Text(
                            'Play',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(color: ColorConstant.primaryTextColor),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Previews',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120, child: Previews()),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Continue Watching for Emenalo',
                      style: TextStyle(
                          color: ColorConstant.primaryTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 170,
                      width: 103,
                      child: Column(children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7),
                                topRight: Radius.circular(7)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Rectangle 14.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: 3,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 44, 44, 44)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info,
                                  color: ColorConstant.primaryTextColor,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: ColorConstant.primaryTextColor,
                                ),
                              ]),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular on Netflix',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Trending Now',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Top 10 in Nigeria Today',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'My List',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'African Movies',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Netflix Originals',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                      height: 251,
                      width: 154,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Rectangle 15 (1).png'))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Watch it again',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'New Releases',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'TV Thrillers & Mysteries',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'US TV Shows',
                  style: TextStyle(
                      color: ColorConstant.primaryTextColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MovieContainer(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
