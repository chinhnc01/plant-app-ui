import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFf9f6f7),
      title: Padding(
        padding: EdgeInsets.only(
          top: defaultPadding,
          left: defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back,',
              style: TextStyle(
                color: Color(0xFF626262),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Naruto Uzumaki',
              style: TextStyle(
                color: bgColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  color: Color(0xFF7A7A7A),
                  size: 30,
                ),
                Positioned(
                  right: 5,
                  top: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6492D),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
