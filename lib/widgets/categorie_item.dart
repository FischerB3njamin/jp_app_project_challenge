import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class CategorieItem extends StatelessWidget {
  final String? leadingIcon;
  final IconData? trailingIcon;
  final bool active;
  final Function callback;

  const CategorieItem({
    super.key,
    required this.item,
    required this.callback,
    required this.active,
    this.leadingIcon,
    this.trailingIcon,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () => callback(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 12.0,
              sigmaY: 12.0,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: active
                    ? CustomColors.white50
                    : CustomColors.categoryItemActiveBg,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: CustomColors.white, width: 0.75),
              ),
              child: Row(
                children: [
                  if (leadingIcon != null)
                    SvgPicture.asset(
                      "$leadingIcon",
                      width: 16,
                    ),
                  SizedBox(width: 4),
                  Text(
                    item,
                    style: TextStyle(
                        color: active ? CustomColors.black : CustomColors.white,
                        fontWeight:
                            active ? FontWeight.bold : FontWeight.normal),
                  ),
                  if (trailingIcon != null)
                    Icon(
                      trailingIcon,
                      size: 20,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
