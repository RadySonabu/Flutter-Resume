import 'dart:developer';

import 'package:app/src/pages/skills_page/backend/backend_page.dart';
import 'package:flutter/material.dart';

class LandingPageCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  final Color color;
  final Widget destinationWhenClicked;
  const LandingPageCard(
      {Key key, this.title, this.icon, this.destinationWhenClicked, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      padding: new EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationWhenClicked),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: color,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: icon,
                title: title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
