import 'dart:developer';

import 'package:app/src/pages/landing_page/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBarItem extends StatelessWidget {
  final Widget title;
  final String url;
  final Widget destinationWhenClicked;
  const NavigationBarItem(
      {Key key, this.title, this.url, this.destinationWhenClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: url != null
          ? () async {
              var webUrl = url;

              if (await canLaunch(webUrl)) {
                await launch(webUrl, forceSafariVC: false);
              } else {
                throw 'Could not launch $webUrl';
              }
            }
          : () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => destinationWhenClicked));
            },
      child: title,
    );
  }
}
