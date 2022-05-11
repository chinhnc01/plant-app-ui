import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class UpcomingAlertsCard extends StatelessWidget {
  const UpcomingAlertsCard({
    Key? key,
    required this.title,
    required this.plant,
    required this.amount,
    required this.imgSrc,
    required this.color,
    this.isImgHasPadding = false,
  }) : super(key: key);

  final String title, plant, amount, imgSrc;
  final Color color;
  final bool isImgHasPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        right: defaultPadding,
        bottom: defaultPadding,
      ),
      padding: EdgeInsets.only(
        top: defaultPadding * 0.6,
        left: defaultPadding * 0.6,
        right: defaultPadding * 0.6,
      ),
      height: 67,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: defaultPadding * 0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xFF1A1C6C),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    plant,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    amount,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF626262),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Spacer(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: isImgHasPadding ? defaultPadding * 0.6 : 0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(imgSrc),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
