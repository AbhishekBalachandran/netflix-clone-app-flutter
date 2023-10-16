import 'package:flutter/material.dart';

class TopSearches extends StatelessWidget {
  const TopSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset('assets/images/Rectangle 21.png'),
        title: Text(
          'Citation',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
