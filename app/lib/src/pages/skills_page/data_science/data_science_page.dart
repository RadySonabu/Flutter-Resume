import 'package:app/src/common_widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class DataSciencePage extends StatelessWidget {
  const DataSciencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      content: Center(
        child: Text('Data Science Page'),
      ),
    );
  }
}
