import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';


const List<String> descriptionText = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  'Don\'t forget to take care of your plants. Lets grow your lovely plant and manage your entire garden.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus placerat luctus dui a volutpat.',
  'Don\'t forget to take care of your plants. Lets grow your lovely plant and manage your entire garden.',
];
class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int currentPage = 0;
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: defaultPadding * 2),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: PageView.builder(
              itemCount: descriptionText.length,
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (BuildContext context, int index) => Text(
                descriptionText[index],
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  height: 2,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: List.generate(
            descriptionText.length,
            (index) => buildDot(index: index),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 6),
      height: 5,
      width: currentPage == index ? 24 : 5,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFFFF4313) : Color(0xFFCBCBDD),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
