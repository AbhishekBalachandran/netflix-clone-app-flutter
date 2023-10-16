import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/databases/database.dart';
import 'package:share_plus/share_plus.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../utils/color_constant/color_constant.dart';

class ComingSoonContainer extends StatelessWidget {
  final int index;
  const ComingSoonContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: Database.comingSoonVideos[index],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Youtube video player
        YoutubePlayer(
          controller: _controller,
        ),
        // Youtube video player end

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.notifications,
                  color: ColorConstant.primaryTextColor,
                  size: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Remind me',
                  style: TextStyle(color: ColorConstant.primaryTextColor),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Share.share('check out my website ');
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.share,
                    color: ColorConstant.primaryTextColor,
                    size: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: ColorConstant.primaryTextColor),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Season 1 coming December 14',
            style: TextStyle(color: ColorConstant.primaryTextColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Castle & Castle',
            style: TextStyle(
                color: ColorConstant.primaryTextColor,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style:
                TextStyle(color: ColorConstant.primaryTextColor, fontSize: 15),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Steamy . Soapy . Slow Burn . Suspenful . Teen . Mystery',
            style: TextStyle(
                color: ColorConstant.primaryTextColor,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
