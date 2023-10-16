import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/databases/database.dart';

class Previews extends StatelessWidget {
  const Previews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Database.previews.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: CircleAvatar(
          radius: 50,
          child: Image.asset(
            Database.previews[index]['image'],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
