import 'package:flutter/material.dart';

class InfinityScrolllScreen extends StatelessWidget {
  const InfinityScrolllScreen({Key? key}) : super(key: key);

  static const name = 'infinity_scroll_screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AnimatedScreen'),
      ),
    );
  }
}
