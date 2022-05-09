import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class RecentPlantCardItem extends StatelessWidget {
  const RecentPlantCardItem({
    Key? key,
    required this.color,
    required this.plantName,
    required this.position,
    required this.level,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Color color;
  final String plantName, position, level, image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(right: defaultPadding * 0.85),
        child: SizedBox(
          width: 153,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding),
                height: 208,
                width: 153,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Image.asset(image),
              ),
              SizedBox(height: defaultPadding),
              Text(
                plantName,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: defaultPadding / 2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 65,
                      padding:
                          EdgeInsets.symmetric(vertical: defaultPadding / 4),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF2EA),
                      ),
                      child: Text(
                        position,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFFFF4313)),
                      ),
                    ),
                    Text(
                      'Level: $level',
                      style: TextStyle(
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
