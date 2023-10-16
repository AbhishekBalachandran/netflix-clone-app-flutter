import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constant/color_constant.dart';
import 'package:netflix_clone/view/search/search_movie_container/search_movie_container.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xFF424242),
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Color(0xFFC4C4C4),
            ),
            labelText: "Search for a show, movie, genre,e.t.c.",
            labelStyle: TextStyle(
              color: Color(0xFFC4C4C4),
            ),
          ),
        ),
        actions: [
          Icon(Icons.mic),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Top Searches',
              style: TextStyle(
                  color: ColorConstant.primaryTextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => SearchMovieContainer(),
            separatorBuilder: (context, index) => Divider(),
          ),
        ],
      ),
    );
  }
}
