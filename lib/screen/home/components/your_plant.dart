import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'your_plant_card_item.dart';


class YourPlant extends StatelessWidget {
  const YourPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: defaultPadding * 0.85),
            child: Container(
              padding: EdgeInsets.all(6),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: bgColor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset('assets/icons/x.svg'),
            ),
          ),
          YourPlantCardItem(
            text: 'Aloevera',
            imgSrc: 'assets/images/plant_aloevera.png',
          ),
          YourPlantCardItem(
            text: 'Cactus',
            imgSrc: 'assets/images/plant_cactus.png',
          ),
          YourPlantCardItem(
            text: 'Monstera',
            imgSrc: 'assets/images/plant_monstera.png',
          ),
        ],
      ),
    );
  }
}
 