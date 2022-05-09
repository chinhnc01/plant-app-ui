import 'package:flutter/material.dart';

import 'upcoming_alerts_card.dart';

class UpcomingAlerts extends StatelessWidget {
  const UpcomingAlerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpcomingAlertsCard(
          color: Color(0xFFFFCEB6),
          title: 'Cut the leaves',
          plant: 'Monstera',
          amount: '2/2 times',
          imgSrc: 'assets/images/leaf.png',
        ),
        UpcomingAlertsCard(
          color: Color(0xFFFFDEB0),
          title: 'Water the Flower',
          plant: 'Ficus',
          amount: '500 mL',
          imgSrc: 'assets/images/droplet.png',
          isImgHasPadding: true,
        ),
      ],
    );
  }
}
