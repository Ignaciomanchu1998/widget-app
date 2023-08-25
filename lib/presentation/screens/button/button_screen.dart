import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'button_screen';
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones + Material 3'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const _SubTitle(
              icon: Icons.check,
              title: 'Text Button',
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text('Soy un TextButton'),
            ),
            const _SubTitle(
              icon: Icons.check,
              title: 'Outlined Button',
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Soy un OutlinedButton'),
            ),
            const SizedBox(height: 20),
            const _SubTitle(
              icon: Icons.check,
              title: 'Elevated Button',
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Soy un ElevatedButton'),
            ),

            // Icon Button
            const SizedBox(height: 20),
            const _SubTitle(
              icon: Icons.check,
              title: 'Icon Button',
            ),
            const SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 25),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
