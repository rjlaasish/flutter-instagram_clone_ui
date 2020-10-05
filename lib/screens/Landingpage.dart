import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/image_assets.dart';
import 'package:instagram_clone/models/FriendsModal.dart';
import 'package:instagram_clone/styleguide/colors.dart';
import 'package:instagram_clone/styleguide/textStyles.dart';
import 'package:instagram_clone/widgets/UserPosts.dart';
import 'package:instagram_clone/widgets/appbar_widgets.dart';
import 'package:instagram_clone/widgets/roundedimage_widget.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: appColor,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  width: 30.0,
                ),
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 30.0,
                ),
                SvgPicture.asset(
                  'assets/icons/instagram.svg',
                  width: 30.0,
                ),
                SvgPicture.asset(
                  'assets/icons/heart.svg',
                  width: 30.0,
                ),
                SvgPicture.asset(
                  'assets/icons/person.svg',
                  width: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: secondaryTextStyle,
                  ),
                  Row(
                    children: [
                      Icon(Icons.play_arrow),
                      Text(
                        "Watch all",
                        style: secondaryTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RoundedImage(
                      imagePath: userPic,
                      hasSeenStory: true,
                      isUser: true,
                      name: "Your Story",
                    ),
                  ),
                  for (var i = 0; i < friends.length; i++)
                    RoundedImage(
                      imagePath: friends[i].imagePath,
                      name: friends[i].name,
                      hasSeenStory: friends[i].hasSeenStory,
                    )
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1.0,
            ),
            UserPosts()
          ],
        ),
      )),
    );
  }
}
