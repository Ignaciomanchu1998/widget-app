import 'package:flutter/material.dart';

import '../../../config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _ListTitle(item: item);
      },
    );
  }
}

class _ListTitle extends StatelessWidget {
  const _ListTitle({
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      leading: Icon(
        item.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: colors.primary,
      ),
      onTap: () => Navigator.pushNamed(context, item.route),
    );
  }
}
