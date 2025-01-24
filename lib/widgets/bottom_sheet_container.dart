import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_card_view.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_close_section.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_narrow_calculator.dart';
import 'package:jp_app_project_challenge/widgets/btn_primary.dart';

class BottomSheetContainer extends StatelessWidget {
  final Food item;

  const BottomSheetContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          BottomSheetCloseSection(),
          SizedBox(height: 130),
          BottomSheetCardView(item: item),
          SizedBox(height: 80),
          BottomSheetNarrowCalculator(),
          SizedBox(height: 24),
          BtnPrimary(
            text: 'Add to Order for ${item.price}',
            callBack: (context) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: CustomColors.bottomSheetBlack50,
                  content: Text('${item.title} was added to the order',
                      style: theme.bodyLarge),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
