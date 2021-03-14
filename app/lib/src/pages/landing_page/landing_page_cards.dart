import 'package:app/src/pages/landing_page/card.dart';
import 'package:app/src/pages/skills_page/backend/backend_page.dart';
import 'package:app/src/pages/skills_page/data_science/data_science_page.dart';
import 'package:app/src/pages/skills_page/database/database_page.dart';
import 'package:app/src/pages/skills_page/frontend/frontend_page.dart';
import 'package:flutter/material.dart';

class LandingPageCards extends StatelessWidget {
  const LandingPageCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        LandingPageCard(
          title: Text(
            'Backend',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.blue,
          icon: Icon(
            Icons.settings_ethernet_sharp,
            color: Colors.white,
          ),
          destinationWhenClicked: BackendPage(),
        ),
        LandingPageCard(
          title: Text(
            'Frontend',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.purple,
          icon: Icon(
            Icons.settings_ethernet_sharp,
            color: Colors.white,
          ),
          destinationWhenClicked: FrontendPage(),
        ),
        LandingPageCard(
          title: Text(
            'Database',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.red,
          icon: Icon(
            Icons.settings_ethernet_sharp,
            color: Colors.white,
          ),
          destinationWhenClicked: DatabasePage(),
        ),
        LandingPageCard(
          title: Text(
            'Data Science',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          color: Colors.black,
          icon: Icon(
            Icons.settings_ethernet_sharp,
            color: Colors.white,
          ),
          destinationWhenClicked: DataSciencePage(),
        ),
      ],
    );
  }
}
