import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({Key? key}) : super(key: key);

  static const name = 'app_tutorial_screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AnimatedScreen'),
      ),
    );
  }
}
