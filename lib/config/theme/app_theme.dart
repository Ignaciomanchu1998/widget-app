import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.indigo,
];

class AppTheme {
  final int selectColor;

  AppTheme({
    this.selectColor = 0,
  }) : assert(
          selectColor >= 0 && selectColor < colorList.length - 1,
          'selectColor must be between 0 and ${colorList.length - 1}',
        );

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        textTheme: const TextTheme(),
      );
}
