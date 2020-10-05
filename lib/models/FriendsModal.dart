import 'package:instagram_clone/image_assets.dart';

class Friend {
  final String name;
  final String imagePath;
  final bool hasSeenStory;

  const Friend({this.name, this.imagePath, this.hasSeenStory});
}

List<Friend> friends = [
  Friend(name: "Hari",imagePath: friend_hari,hasSeenStory:false),
  Friend(name: "Ram",imagePath: friend_ram,hasSeenStory:true),
  Friend(name: "lovely_bj",imagePath: friend_bj,hasSeenStory:false),
  Friend(name: "luitel_don",imagePath: friend_luitel,hasSeenStory:false),
  Friend(name: "lovely_babita99",imagePath: friend_babita,hasSeenStory:false),
];

