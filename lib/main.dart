import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 2).getTheme(),
      routerConfig: appRouter,
    );
  }
}


// Recuperar commit anterior
//git checkout -- .