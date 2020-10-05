import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/image_assets.dart';
import 'package:instagram_clone/models/FriendsModal.dart';
import 'package:instagram_clone/models/PostModal.dart';
import 'package:instagram_clone/styleguide/textStyles.dart';
import 'package:instagram_clone/widgets/roundedimage_widget.dart';

class UserPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (var i = 0; i < posts.length; i++)
              PostCardPill(
                screenSize: screenSize,
                imagePath: posts[i].imagePath,
                name: posts[i].name,
                postimagepath: posts[i].postimagepath,
                like: posts[i].like,
                comment: posts[i].comment,
                desc: posts[i].desc,
                
              ),
          ],
        ));
  }
}

class PostCardPill extends StatelessWidget {
  const PostCardPill({
    Key key,
    @required this.screenSize,
    this.imagePath,
    this.name,
    this.postimagepath,
    this.like,
    this.comment,
    this.desc,
  }) : super(key: key);

  final double screenSize;
  final String imagePath;
  final String name;
  final String postimagepath;
  final like;
  final comment;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:8.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    RoundedImage(
                      imagePath: imagePath,
                      hasSeenStory: false,
                      imageSize: 30.0,
                    ),
                    Text(name, style: posttextStyle)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(postimagepath, width: screenSize)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              desc,
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/heart.svg',
                  width: 25.0,
                ),
                SizedBox(width: 10.0),
                Text(like),
                SizedBox(width: 20.0),
                SvgPicture.asset(
                  'assets/icons/comment.svg',
                  width: 25.0,
                ),
                SizedBox(width: 10.0),
                Text(comment),
                SizedBox(width: 20.0),
                SvgPicture.asset(
                  'assets/icons/send.svg',
                  width: 25.0,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/bookmark.svg',
                  width: 25.0,
                ),
              ],
            ),
         
          SizedBox(height: 20.0), ],
        ),
      ),
    );
  }
}
