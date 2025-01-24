import 'package:jp_app_project_challenge/models/food.dart';

class FoodRepositorie {
  static final List<Food> recommendet = [mogli, balu, wuffs];
  static List<Food> allFood = [mogli, balu, wuffs, miau, kickeriki, burger];

  static Food mogli = Food(
    title: "Mogli's Cup",
    subTitle: "Strawberry ice cream",
    category: 'Frozen',
    imagePath: 'assets/graphics/cupkake_cat.png',
    likes: 200,
    stars: 4,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 8.99,
  );

  static Food balu = Food(
    title: "Balus's Cup",
    subTitle: "Pistachio ice cream",
    category: 'Sweet',
    imagePath: 'assets/graphics/icecream.png',
    likes: 150,
    stars: 3,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 9.99,
  );

  static Food miau = Food(
    title: "Miau's Cup",
    subTitle: "Chocolate vanilla ice cream stick",
    category: "Frozen",
    imagePath: 'assets/graphics/icecream_stick.png',
    likes: 100,
    stars: 2,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 8.99,
  );

  static Food wuffs = Food(
    title: "Wuff's Cup",
    subTitle: "Vanilla ice cream with chocolate hat",
    category: "Frozen",
    imagePath: 'assets/graphics/icecream_cone.png',
    likes: 300,
    stars: 4,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 7.99,
  );

  static Food kickeriki = Food(
    title: "Kickeriki's Cup",
    subTitle: "Cupcake",
    category: 'Hot',
    imagePath: 'assets/graphics/cupcake_chick.png',
    likes: 200,
    stars: 4,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 6.99,
  );

  static Food burger = Food(
    title: "Angi's Yummy Burger",
    subTitle: "Best Burger of the world",
    category: 'Salty',
    imagePath: 'assets/graphics/burger.png',
    likes: 500,
    stars: 5,
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,  dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
    price: 5.99,
  );
}
