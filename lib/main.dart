import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 2).getTheme(),
      home: const HomeScreen(),
    );
  }
}


// Recuperar commit anterior
//git checkout -- .