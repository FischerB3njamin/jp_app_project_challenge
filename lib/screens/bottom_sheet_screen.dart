import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_container.dart';

class BottomSheetScreen extends StatelessWidget {
  final Food item;
  const BottomSheetScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColors.bottomSheetBackground,
          borderRadius: BorderRadius.circular(8)),
      width: double.infinity,
      height: 775,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -135,
              child: Image.asset(
                item.imagePath,
                width: 430,
              )),
          BottomSheetContainer(item: item)
        ],
      ),
    );
  }
}
