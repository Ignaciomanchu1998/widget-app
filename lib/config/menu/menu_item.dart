import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.route,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'A button with a filled background color',
    route: '/buttons',
    icon: Icons.radio_button_checked,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'A button with a outlined border',
    route: '/card',
    icon: Icons.square,
  ),
];
