import 'package:flutter/material.dart';
import 'package:plant_app_ui/screen/home/home_screen.dart';

import 'screen/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        fontFamily: 'Mulish',
        scaffoldBackgroundColor: Color(0xFFf9f6f7),
      ),
      home: Welcome(),
      //home: HomeScreen(),
    );
  }
}
