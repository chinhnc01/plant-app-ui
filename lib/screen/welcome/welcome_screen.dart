import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screen/home/home_screen.dart';

import 'components/body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: ((context) => HomeScreen())),
        ),
        backgroundColor: bgColor,
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Body(),
    );
  }
}
