import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class BottomSheetCloseSection extends StatelessWidget {
  const BottomSheetCloseSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: CustomColors.white50,
              ),
            ),
            child: Icon(Icons.close),
          ),
        )
      ],
    );
  }
}
