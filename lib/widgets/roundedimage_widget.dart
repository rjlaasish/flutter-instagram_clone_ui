import 'package:flutter/material.dart';
import 'package:instagram_clone/styleguide/colors.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RoundedImage extends StatelessWidget {
  final double imageSize;
  final String imagePath;
  final bool hasSeenStory;
  final String name;
  final bool isUser;

  const RoundedImage(
      {Key key,
      @required this.imagePath,
      @required this.hasSeenStory,
      this.isUser = false,
      this.name,
      this.imageSize = 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, right: 14.0, bottom: 20.0),
      child: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                painter:
                    Mycustompainter(hasSeenStory: hasSeenStory, isUser: isUser),
                child: ClipOval(
                  child: Container(
                      width: imageSize,
                      height: imageSize,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              if (isUser)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        gradient: appGradient,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),

          name != null
              ? Text(
                  name,
                  style: hasSeenStory
                      ? TextStyle(
                          fontSize: 14,
                          color: Colors.black26,
                        )
                      : TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class Mycustompainter extends CustomPainter {
  final bool hasSeenStory;
  final bool isUser;

  Mycustompainter({this.isUser, this.hasSeenStory});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);

    Paint myPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..strokeWidth = 2.0;

    if (!hasSeenStory) {
      myPainter.shader = appGradient.createShader(
          Rect.fromCircle(center: center, radius: size.width / 2));
    } else if (hasSeenStory) {
      myPainter.color = tertiaryTextColor;
    }

    if (!isUser) {
      canvas.drawArc(
          Rect.fromCircle(center: center, radius: (size.width / 2) + 3),
          math.radians(-90),
          math.radians(360),
          false,
          myPainter);
    } else {
      myPainter.color = Colors.transparent;
      canvas.drawArc(
          Rect.fromCircle(center: center, radius: (size.width / 2) + 3),
          math.radians(-90),
          math.radians(360),
          false,
          myPainter);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
