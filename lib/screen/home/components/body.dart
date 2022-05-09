import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screen/home/components/upcoming_alerts_card.dart';

import 'recent_plants.dart';
import 'section_title.dart';
import 'upcoming_alerts.dart';
import 'your_plant.dart';
import 'your_plant_card_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(text: 'Recent Plants'),
          SizedBox(height: defaultPadding),
          RecentPlants(),
          SectionTitle(text: 'Your Plant'),
          SizedBox(height: defaultPadding),
          YourPlant(),
          SectionTitle(text: 'Upcoming Alerts'),
          SizedBox(height: defaultPadding),
          UpcomingAlerts(),
          
        ],
      ),
    );
  }
}
