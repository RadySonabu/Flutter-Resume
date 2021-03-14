import 'package:app/src/common_widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class BackendPage extends StatelessWidget {
  const BackendPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      content: Center(
        child: Text('Backend Page'),
      ),
    );
  }
}
