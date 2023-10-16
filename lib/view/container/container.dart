import 'package:flutter/material.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 161,
                      width: 103,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Rectangle 15.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              );
  }
}
