import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  static const name = 'animated_screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AnimatedScreen'),
      ),
    );
  }
}