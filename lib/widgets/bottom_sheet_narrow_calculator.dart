import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';
import 'package:jp_app_project_challenge/widgets/custom_segmented_button.dart';

class BottomSheetNarrowCalculator extends StatefulWidget {
  const BottomSheetNarrowCalculator({
    super.key,
  });

  @override
  State<BottomSheetNarrowCalculator> createState() =>
      _BottomSheetNarrowCalculatorState();
}

class _BottomSheetNarrowCalculatorState
    extends State<BottomSheetNarrowCalculator> {
  void addItem() => setState(() {
        numberOfItems += 1;
      });
  void removeItem() => setState(() {
        if (numberOfItems - 1 > 0) numberOfItems -= 1;
      });
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 44,
            alignment: Alignment.center,
            child: CustomSegmentedButton()),
        Spacer(),
        Container(
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColors.bottomSheetBackground30,
              border:
                  Border.all(color: CustomColors.bottomSheetBorderDarkGray)),
          child: IconButton(
              padding: EdgeInsets.all(4),
              constraints: BoxConstraints(),
              onPressed: () => removeItem(),
              icon: Icon(Icons.remove)),
        ),
        Padding(
            padding: EdgeInsets.all(8),
            child: Text("$numberOfItems",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        Container(
            height: 32,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.bottomSheetBackground30,
                border:
                    Border.all(color: CustomColors.bottomSheetBorderDarkGray)),
            child: IconButton(
                padding: EdgeInsets.all(4),
                constraints: BoxConstraints(),
                onPressed: () => addItem(),
                icon: Icon(
                  Icons.add,
                  size: 24,
                ))),
      ],
    );
  }
}
