import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  static const String name = 'card_screen';
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CardScreen'),
      ),
    );
  }
}