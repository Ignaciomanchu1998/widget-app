import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/button/button_screen.dart';
import 'package:widgets_app/presentation/screens/card/card_screen.dart';

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
    route: ButtonScreen.name,
    icon: Icons.radio_button_checked,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'A button with a outlined border',
    route: CardScreen.name,
    icon: Icons.square,
  ),
  MenuItem(
    title: 'Progress indicators',
    subTitle: 'Generales y controlados',
    route: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y Dialogs',
    subTitle: 'Notificaciones en la parte inferior de la pantalla',
    route: '/snackbars',
    icon: Icons.notification_add,
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Animaciones de widgets y transiciones',
    route: '/animated',
    icon: Icons.check_box_outline_blank,
  ),
  MenuItem(
    title: 'Checkboxes',
    subTitle: 'Checkboxes',
    route: '/ui-controls',
    icon: Icons.check_box,
  ),
];
