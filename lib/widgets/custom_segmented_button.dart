import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/theme/custom_colors.dart';

class CustomSegmentedButton extends StatefulWidget {
  final Function updateSize;
  const CustomSegmentedButton({
    super.key,
    required this.updateSize,
  });

  @override
  State<CustomSegmentedButton> createState() => _CustomSegmentedButtonState();
}

enum Sizes { small, medium, large }

class _CustomSegmentedButtonState extends State<CustomSegmentedButton> {
  Sizes sizesView = Sizes.small;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      showSelectedIcon: false,
      style: SegmentedButton.styleFrom(
        padding: EdgeInsets.all(0),
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: CustomColors.backgroundColor,
        foregroundColor: CustomColors.foregroundColor,
        selectedForegroundColor: CustomColors.white,
        selectedBackgroundColor: CustomColors.selectedBackgroundColor,
      ),
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(
          value: Sizes.small,
          label: Text('Small'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.medium,
          label: Text('Medium'),
        ),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('Large'),
        ),
      ],
      selected: <Sizes>{sizesView},
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          sizesView = newSelection.first;
        });
        widget.updateSize(newSelection.first);
      },
    );
  }
}
