import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class BtnPrimary extends StatelessWidget {
  final Function callBack;
  final String text;
  const BtnPrimary({super.key, required this.callBack, required this.text});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [CustomColors.pinkShadow, CustomColors.white])),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: CustomColors.btnPink,
                blurRadius: 80,
                offset: Offset(1, 1),
              ),
            ],
            gradient: CustomColors.linearGradientBtnPrimary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () => callBack(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                text,
                style: theme.titleMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
