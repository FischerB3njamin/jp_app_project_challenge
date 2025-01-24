import 'package:flutter/material.dart';
import 'package:jp_app_project_challenge/models/food.dart';
import 'package:jp_app_project_challenge/repositories/food_repositorie.dart';
import 'package:jp_app_project_challenge/widgets/background_image.dart';
import 'package:jp_app_project_challenge/widgets/card_view.dart';
import 'package:jp_app_project_challenge/widgets/categorie_view.dart';
import 'package:jp_app_project_challenge/widgets/recommend_section.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Food> allItems = FoodRepositorie.allFood;
  List<Food> filteredItems = FoodRepositorie.allFood;
  List<String> selectedCategories = [];
  void handleCategorie(String input) {
    if ('All Categories' == input) {
      selectedCategories = [];
    } else if (selectedCategories.contains(input)) {
      selectedCategories.remove(input);
    } else {
      selectedCategories.add(input);
    }
    filterItems();
  }

  void filterItems() {
    if (selectedCategories.isEmpty) {
      filteredItems = allItems;
    } else {
      filteredItems = allItems
          .where((item) => selectedCategories.contains(item.category))
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    List<String> categories = ['Salty', 'Sweet', 'Frozen', 'Hot'];
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundImage(imagePath: 'assets/backgrounds/bg_mainscreen.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 62),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  "Choose Your Favorite \nSnack",
                  style: theme.titleLarge,
                ),
              ),
              SizedBox(height: 2),
              CategorieView(
                categories: categories,
                selectedCategories: selectedCategories,
                callback: handleCategorie,
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    for (final item in filteredItems)
                      Container(
                          clipBehavior: Clip.none,
                          width: 415,
                          child: CardView(item: item))
                  ],
                ),
              ),
              SizedBox(height: 44),
              RecommendSection(),
            ],
          ),
        ],
      ),
    );
  }
}
