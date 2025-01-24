import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/screens/start_screen.dart';
import 'package:jp_app_project_challenge/theme/custom_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: customTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
