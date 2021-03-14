import 'package:app/src/common_widgets/navigation_bar/navigation_bar.dart';
import 'package:app/src/common_widgets/responsive_widget.dart';
import 'package:app/src/pages/landing_page/landing_page_center_text.dart';
import 'package:flutter/material.dart';

import 'landing_page_cards.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktop: buildNavigationBar(),
        tablet: buildNavigationBar(),
        mobile: buildNavigationBar());
  }

  NavigationBar buildNavigationBar() {
    return NavigationBar(
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LandingPageCenterText(),
            LandingPageCards(),
          ],
        ),
      ),
    );
  }
}
