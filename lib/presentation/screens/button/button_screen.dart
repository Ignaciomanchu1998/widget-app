import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'button_screen';
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones + Material 3'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 20,
    );

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: SizedBox(
          child: Wrap(
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => {},
                child: const Text(
                  'Elevated',
                  style: textStyle,
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text(
                  'Elevated Disabled',
                  style: textStyle,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => {},
                label: const Text(
                  'Elevated Icon',
                  style: textStyle,
                ),
                icon: const Icon(Icons.check),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('Filled', style: textStyle),
              ),
              FilledButton.icon(
                onPressed: () {},
                label: const Text('Filled Icon', style: textStyle),
                icon: const Icon(Icons.lock),
              ),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text('Filled Tonal', style: textStyle),
              ),
              FilledButton.tonalIcon(
                onPressed: () {},
                label: const Text('Filled Tonal Icon', style: textStyle),
                icon: const Icon(Icons.lock),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined', style: textStyle),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: const Text('Outlined', style: textStyle),
                icon: const Icon(Icons.remove_red_eye),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text', style: textStyle),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text('Text', style: textStyle),
                icon: const Icon(Icons.check_box),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.headphones),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
