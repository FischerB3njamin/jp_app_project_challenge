import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/btn_primary.dart';

class FrozenCard extends StatelessWidget {
  const FrozenCard({super.key, required this.callBack});
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 12.0,
          sigmaY: 12.0,
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          width: 380.0,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: CustomColors.bottomSheetBackground30,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: CustomColors.white50)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(" Feeling Snackish Today?", style: theme.titleLarge),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                    "Explore Angi's most popular snack selection and get instantly happy.",
                    textAlign: TextAlign.center,
                    style: theme.bodyMedium),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: 200,
                child: BtnPrimary(
                  text: Text('Order Now', style: theme.titleMedium),
                  callBack: callBack,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
