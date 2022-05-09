import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

import 'bg_image.dart';
import 'description.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BgImage(
        child: Title(),
      ),
    );
  }
}

class Title extends StatefulWidget {
  const Title({Key? key}) : super(key: key);

  @override
  State<Title> createState() => _TitleState();
}

class _TitleState extends State<Title> {
  int currentPage = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 1),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Plant Lovers',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1.5
                    ..color = Colors.white,
                ),
              ),
              // Solid text as fill.
              Text(
                'Plant Lovers',
                style: TextStyle(
                  fontSize: 30,
                  color: bgColor,
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding / 2),
          Description(),
          Spacer(flex: 15),
        ],
      ),
    );
  }
}
