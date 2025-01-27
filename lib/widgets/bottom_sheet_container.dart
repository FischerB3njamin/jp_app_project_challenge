import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_card_view.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_close_section.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_narrow_calculator.dart';
import 'package:jp_app_project_challenge/widgets/btn_primary.dart';
import 'package:jp_app_project_challenge/widgets/custom_segmented_button.dart';

class BottomSheetContainer extends StatefulWidget {
  final Food item;

  const BottomSheetContainer({super.key, required this.item});

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  late double newPrice;
  late double basePrice;
  double sizePrize = 0;
  int itemCount = 1;
  Sizes size = Sizes.small;

  @override
  void initState() {
    basePrice = widget.item.price;
    calculatePrice();
    super.initState();
  }

  void calculatePrice() {
    setState(() {
      newPrice = (basePrice + sizePrize) * itemCount;
    });
  }

  void updateItemCount(int newItemcount) {
    itemCount = newItemcount;
    calculatePrice();
  }

  void updateSize(Sizes newSize) {
    if (newSize == Sizes.small) sizePrize = 0;
    if (newSize == Sizes.medium) sizePrize = 1;
    if (newSize == Sizes.large) sizePrize = 2;

    calculatePrice();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          BottomSheetCloseSection(),
          SizedBox(height: 130),
          BottomSheetCardView(item: widget.item),
          SizedBox(height: 80),
          BottomSheetNarrowCalculator(
              updatePrice: updateItemCount, updateSize: updateSize),
          SizedBox(height: 24),
          BtnPrimary(
            text: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add to Order for ', style: theme.titleMedium),
                SvgPicture.asset(
                  "assets/svg/􁑐.svg",
                  width: 14,
                ),
                Text(' $newPrice', style: theme.titleMedium),
              ],
            ),
            callBack: (context) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: CustomColors.bottomSheetBlack50,
                  content: Text('${widget.item.title} was added to the order',
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
