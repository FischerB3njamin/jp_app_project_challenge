import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/screens/main_screen.dart';
import 'package:jp_app_project_challenge/widgets/background_image.dart';
import 'package:jp_app_project_challenge/widgets/frozen_card.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void navigateToSecondPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BackgroundImage(
          imagePath: 'assets/backgrounds/bg_startscreen.png',
        ),
        Positioned(
          left: -40,
          top: 120,
          child: SizedBox(
            width: 600,
            height: 550,
            child: Image.asset(
              'assets/graphics/cupcake_chick.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          bottom: -360,
          child: Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/details/snack_snack.png',
              fit: BoxFit.contain,
              height: 60,
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          child: FrozenCard(
            callBack: navigateToSecondPage,
          ),
        ),
      ],
    );
  }
}
