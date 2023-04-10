import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/app_theme.dart';
import 'package:maxway_clone/routes/app_routes.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'MaxWay',
        theme: lightTheme,
        initialRoute: AppRoutes.initial,
        routes: AppPages.routes,
      ),
    );
  }
}
