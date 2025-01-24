import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/widgets/categorie_item.dart';

class CategorieView extends StatelessWidget {
  final List<String> selectedCategories;
  final Function callback;
  const CategorieView({
    super.key,
    required this.categories,
    required this.selectedCategories,
    required this.callback,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategorieItem(
              item: "All Categories",
              leadingIcon: "assets/svg/Lunch.svg",
              trailingIcon: Icons.keyboard_arrow_down_sharp,
              callback: () => callback("All Categories"),
              active: false),
          for (final item in categories)
            CategorieItem(
              item: item,
              callback: () => callback(item),
              active: selectedCategories.contains(item),
            ),
        ],
      ),
    );
  }
}
