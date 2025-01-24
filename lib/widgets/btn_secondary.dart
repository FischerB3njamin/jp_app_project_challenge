import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class BtnSecondary extends StatelessWidget {
  final Function callBack;
  final String text;
  const BtnSecondary({super.key, required this.callBack, required this.text});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Container(
      height: 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: RadialGradient(
              stops: [0, 1],
              colors: [CustomColors.black50, CustomColors.white50])),
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: CustomColors.btnLila,
                blurRadius: 24,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: CustomColors.btnLilaPink,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                color: CustomColors.btnLilaPink50,
                blurRadius: 90,
                offset: Offset(0, 30),
              ),
            ],
            gradient: LinearGradient(
                colors: [CustomColors.btnBlueLila, CustomColors.btnPurple]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            onPressed: () => callBack(),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(text,
                style: theme.bodySmall!.copyWith(color: CustomColors.white)),
          ),
        ),
      ),
    );
  }
}
