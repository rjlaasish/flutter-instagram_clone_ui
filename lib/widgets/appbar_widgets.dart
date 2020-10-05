import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/camera.svg',
          ),
          Text(
            "Instagram",
            style: TextStyle(
                fontFamily: 'Grand',
                fontSize: 30.0,
                fontWeight: FontWeight.w400),
          ),
          SvgPicture.asset(
            'assets/icons/send.svg',
          ),
        ],
      ),
    );
  }
}
