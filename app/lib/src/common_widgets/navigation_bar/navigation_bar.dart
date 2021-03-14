import 'package:app/src/common_widgets/navigation_bar/navigation_bar_item.dart';
import 'package:app/src/pages/landing_page/landing_page.dart';
import 'package:app/src/pages/resume_page/resume_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBar extends StatelessWidget {
  final Widget content;
  const NavigationBar({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavigationBarItem(
                    title: Text(
                      'Ardy Ubanos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    destinationWhenClicked: LandingPage(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 50),
                      NavigationBarItem(
                        title: Text(
                          'Resume',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        destinationWhenClicked: ResumePage(),
                      ),
                      SizedBox(width: 50),
                      NavigationBarItem(
                        title: Icon(
                          AntDesign.github,
                          color: Colors.white,
                        ),
                        url: 'https://github.com/RadySonabu',
                      ),
                      SizedBox(width: 50),
                      NavigationBarItem(
                        title: Icon(
                          AntDesign.linkedin_square,
                          color: Colors.white,
                        ),
                        url: 'https://www.linkedin.com/in/ardy-ubanos/',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: content),
    );
  }
}
