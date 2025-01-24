import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/screens/bottom_sheet_screen.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/btn_secondary.dart';

class CardView extends StatelessWidget {
  final Food item;
  const CardView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 0, bottom: 20),
      height: 240,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // Perspective to enhance 3D effect
              ..rotateY(-0.4),
            child: ClipRRect(
              // Clip it cleanly.
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(32),

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CustomColors.white50,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(32),
                    color: CustomColors.bottomSheetBackground30,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              right: 20,
              top: 40,
              child: Image.asset(item.imagePath, width: 230)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 32.0, top: 12),
                  child: Row(
                    children: [
                      Text(item.title, style: theme.titleSmall),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/svg/Star Filled.svg",
                        width: 12,
                        colorFilter: ColorFilter.mode(
                            CustomColors.btnOrange2, BlendMode.srcIn),
                      ),
                      Text("${item.stars}.0", style: theme.bodyMedium)
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  item.subTitle,
                  style: theme.bodySmall,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/􁑐.svg",
                      width: 14,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("${item.price}", style: theme.titleSmall)
                  ],
                ),
                SizedBox(height: 60),
                BtnSecondary(
                    callBack: () => showBottomSheet(
                        context: context,
                        builder: (context) => BottomSheetScreen(item: item)),
                    text: "Add to order"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
