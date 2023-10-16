import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';

class SearchMovieContainer extends StatelessWidget {
  const SearchMovieContainer({super.key,});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: ColorConstant.containerGrey,
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                width: width * .40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle 21.png'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Citation',
                style: TextStyle(
                    color: ColorConstant.primaryTextColor, fontSize: 20),
              )
            ]),
            Icon(
              Icons.play_circle_outline_outlined,
              color: ColorConstant.primaryTextColor,
            )
          ],
        ),
      ),
    );
  }
}
