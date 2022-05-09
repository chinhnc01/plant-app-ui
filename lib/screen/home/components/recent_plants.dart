import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

import 'recent_plant_card_item.dart';


class RecentPlants extends StatelessWidget {
  const RecentPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          children: [
            RecentPlantCardItem(
              color: Color(0xFFFFCEB6),
              plantName: 'Aloevera',
              position: 'Indoor',
              level: 'Hard',
              image: 'assets/images/aloevera.png',
              press: () {},
            ),
            RecentPlantCardItem(
              color: Color(0xFFFFDEB0),
              plantName: 'Cactus',
              position: 'Outdoor',
              level: 'Easy',
              image: 'assets/images/cactus.png',
              press: () {},
            ),
            RecentPlantCardItem(
              color: Color(0xFFFFCEB6),
              plantName: 'Cactus',
              position: 'Outdoor',
              level: 'Easy',
              image: 'assets/images/aloevera.png',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, top: defaultPadding),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
      ),
    );
  }
}
