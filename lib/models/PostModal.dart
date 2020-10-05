import 'package:instagram_clone/image_assets.dart';

class PostModal {
  final String imagePath;
  final String name;
  final String postimagepath;
  final like;
  final comment;
  final String desc;

  PostModal({this.desc, 
      this.imagePath, this.name, this.postimagepath, this.like, this.comment});
}

List<PostModal> posts = [
  PostModal(
       desc:"Enjoynig beautiful time with her !\n#lovely_kto_moh #punk_boy",
      imagePath: friend_bj,
      name: "lovely_bj",
      postimagepath: friend_bj,
      like: "1",
      comment: "0",
     ),
  PostModal(
     desc:"Sun is red \nSky is blue \nI love one \nThat is you !\n#babita_fams",
      imagePath: friend_babita,
      name: "nakkali_babita",
      postimagepath: babitaji_post,
      like: "12k",
      comment: "250"),
  PostModal(
     desc:"Yo wassup",
      imagePath: friend_hari,
      name: "hari_psy00",
      postimagepath:hari_post,
      like: "152",
      comment: "10"),
  PostModal(
    desc: "Notice !!!",
      imagePath: friend_ram,
      name: "ram_gunner89",
      postimagepath: ram_post,
      like: "179",
      comment: "6"),
];
