import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/widgets/bottom_sheet_reviews.dart';

class IncredientsView extends StatelessWidget {
  const IncredientsView({
    super.key,
    required this.item,
  });

  final Food item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              spacing: 6,
              children: [
                Image.asset(
                  "assets/graphics/glutenFree.png",
                  width: 20,
                ),
                Image.asset(
                  "assets/graphics/sugarFree.png",
                  width: 20,
                ),
                Image.asset(
                  "assets/graphics/lowFat.png",
                  width: 20,
                ),
                Image.asset(
                  "assets/graphics/kcal.png",
                  width: 20,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        BottomSheetReviews(stars: item.stars)
      ],
    );
  }
}
