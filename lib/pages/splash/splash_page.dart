import 'package:flutter/material.dart';
import 'package:maxway_clone/core/theme/theme_colors.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, AppRoutes.main);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        surfaceTintColor: ThemeColors.primary,
        backgroundColor: ThemeColors.primary,
      ),
      backgroundColor: ThemeColors.primary,
      body: const Center(
        child: Image(
          image: AssetImage('assets/png/logo.png'),
        ),
      ),
    );
  }
}
