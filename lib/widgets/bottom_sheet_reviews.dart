import 'package:flutter/material.dart';

class BottomSheetReviews extends StatelessWidget {
  final int stars;
  const BottomSheetReviews({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Reviews", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            for (int i = 0; i < 5; i++)
              Icon(i < stars ? Icons.star : Icons.star_border, size: 16),
            SizedBox(width: 24),
            Text("$stars.0")
          ],
        )
      ],
    );
  }
}
