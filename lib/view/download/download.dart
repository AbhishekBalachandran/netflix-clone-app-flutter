import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';

class Download extends StatelessWidget {
  const Download({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.backgroundColor,
        title: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Smart Downloads',
              style: TextStyle(
                  color: ColorConstant.primaryTextColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Introducing Downloads For You',
                style: TextStyle(
                    color: ColorConstant.primaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: TextStyle(color: ColorConstant.primaryTextColor),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 90,
            backgroundColor: ColorConstant.containerGrey,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'SETUP',
                style: TextStyle(color: ColorConstant.primaryTextColor),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(color: ColorConstant.containerGrey),
            child: Center(
              child: Text(
                'Find Something to Download',
                style: TextStyle(color: ColorConstant.primaryTextColor),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
