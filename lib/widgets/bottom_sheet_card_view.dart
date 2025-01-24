import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/incredients_view.dart';

class BottomSheetCardView extends StatelessWidget {
  const BottomSheetCardView({
    super.key,
    required this.item,
  });

  final Food item;

  @override
  Widget build(BuildContext context) {
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
            border: Border.all(
              color: CustomColors.white50,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 8.0, right: 8, bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/Heart.svg",
                      width: 16,
                    ),
                    SizedBox(width: 4),
                    Text("${item.likes}")
                  ],
                ),
                Text(item.title, style: Theme.of(context).textTheme.titleLarge),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.white50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/􁑐.svg",
                        width: 18,
                      ),
                      Text(
                        "${item.price}",
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 16),
                IncredientsView(item: item)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
