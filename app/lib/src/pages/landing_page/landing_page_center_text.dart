import 'package:flutter/material.dart';

class LandingPageCenterText extends StatelessWidget {
  const LandingPageCenterText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Hello.',
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'I am a Software Developer',
                  style: TextStyle(fontSize: 60),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'with knowledge in',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
