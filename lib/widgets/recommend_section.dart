import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/repositories/food_repositorie.dart';
import 'package:jp_app_project_challenge/widgets/recommend_card.dart';

class RecommendSection extends StatelessWidget {
  static final recommendItems = FoodRepositorie.recommendet;

  const RecommendSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("We Recommend", style: theme.titleSmall),
        ),
        SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var item in recommendItems) RecommendCard(item: item)
            ],
          ),
        )
      ],
    );
  }
}
