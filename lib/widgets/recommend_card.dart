import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/screens/bottom_sheet_screen.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class RecommendCard extends StatelessWidget {
  final Food item;
  const RecommendCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () => showBottomSheet(
            context: context,
            builder: (context) => BottomSheetScreen(item: item)),
        child: Container(
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: CustomColors.white50),
            gradient: LinearGradient(stops: [
              0.00,
              0.61,
              1
            ], colors: [
              CustomColors.white10,
              CustomColors.btnBlueLila,
              CustomColors.btnBlueLila2,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    item.imagePath,
                    scale: 3,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  item.title,
                  style: theme.headlineSmall,
                ),
                Text(
                  item.subTitle,
                  style: theme.labelSmall,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/􁑐.svg",
                      width: 12,
                    ),
                    SizedBox(width: 4),
                    Text("${item.price}", style: theme.labelMedium),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/svg/Heart.svg",
                      width: 14,
                    ),
                    SizedBox(width: 4),
                    Text('${item.likes}')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
