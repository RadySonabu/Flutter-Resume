import 'package:app/src/common_widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      content: Center(
        child: Text('Resume Page'),
      ),
    );
  }
}
