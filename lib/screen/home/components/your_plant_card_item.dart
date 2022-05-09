import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class YourPlantCardItem extends StatelessWidget {
  const YourPlantCardItem({
    Key? key,
    required this.imgSrc,
    required this.text,
  }) : super(key: key);

  final String imgSrc, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding * 0.85),
      child: Container(
        padding: EdgeInsets.all(defaultPadding * 0.6),
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Image.asset(
              imgSrc,
              height: 60,
            ),
            SizedBox(height: defaultPadding * 0.4),
            Text(
              text,
              style: TextStyle(color: Color(0xFF555660)),
            ),
          ],
        ),
      ),
    );
  }
}
