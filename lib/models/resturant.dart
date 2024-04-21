import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/image_constant.dart';
import 'package:food_delivery_app/models/food.dart';

class Resturant with ChangeNotifier {
  final List<FoodModel> _menu = [
    // burgers
    FoodModel(
        name: "Classic cheeseburger",
        description:
            "A joucy beef patty with meltd chaddar, letuce,tomotto, and a hint of onion and pickle",
        price: 8.9,
        image: ImageConstant.burger1,
        category: FoodCategory.burgres,
        addons: [
          Addon(name: "Exrta cheese", price: 0.9),
          Addon(name: "Bacon", price: 0.3),
          Addon(name: "Avocoda", price: 1.3)
        ]),
    FoodModel(
        name: "BBQ Bacon burger",
        description: "Smuky BBQ souce, crispy bacon and onion",
        price: 12.9,
        image: ImageConstant.burger2,
        category: FoodCategory.burgres,
        addons: [
          Addon(name: "Grilled onion", price: 0.9),
          Addon(name: "Jelepenons", price: 0.3),
          Addon(name: "Extra BBQ souce", price: 1.3)
        ]),
    FoodModel(
        name: "Veggy burger",
        description:
            "A herty veggy petty topped with fresh avocoda letture, and tomoto, served on a whole.",
        price: 7.9,
        image: ImageConstant.burger3,
        category: FoodCategory.burgres,
        addons: [
          Addon(name: "Veggon cheese", price: 1.9),
          Addon(name: "Grilled masrooms", price: 0.6),
          Addon(name: "Hummus Spread", price: 1.99)
        ]),
    FoodModel(
        name: "Aloha burger",
        description:
            "A chat-grilled chiken breaset topped with slice of grilled pineapple, Swiss cheese.",
        price: 7.9,
        image: ImageConstant.burger4,
        category: FoodCategory.burgres,
        addons: [
          Addon(name: "Teriyaki glaze", price: 0.99),
          Addon(name: "Extra pineapple", price: 0.099),
          Addon(name: "Bacon", price: 1.49)
        ]),
    FoodModel(
        name: "Blue moon burger",
        description:
            "This burger is a blue cheese lover's dream. It features a succulent ground beef patty.",
        price: 9.49,
        image: ImageConstant.burger5,
        category: FoodCategory.burgres,
        addons: [
          Addon(name: "Souteed mushrooms", price: 0.99),
          Addon(name: "Fried egg", price: 0.099),
          Addon(name: "Spicy mayo", price: 1.49)
        ]),

    // salads
    FoodModel(
        name: "Caesro salad",
        description:
            "This salad is a blue cheese lover's dream. It features a succulent ground beef patty.",
        price: 9.49,
        image: ImageConstant.salads1,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Souteed mushrooms", price: 0.99),
          Addon(name: "Fried egg", price: 0.099),
          Addon(name: "Spicy mayo", price: 1.49)
        ]),
    FoodModel(
        name: "Greek salad",
        description: "Tomoto, cucombers, red onion and herbs.",
        price: 10.49,
        image: ImageConstant.salads2,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Feta cheese", price: 0.49),
          Addon(name: "Kolmata Olives", price: 0.099),
          Addon(name: "Grilled shimps", price: 2.49)
        ]),
    FoodModel(
        name: "Quinoa salad",
        description: "Qiuna mixed cucombers, tomoto's bell papers.",
        price: 10.49,
        image: ImageConstant.salads3,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Feta cheese", price: 0.49),
          Addon(name: "Spicy mayo", price: 1.49),
          Addon(name: "Grilled shimps", price: 2.49)
        ]),
    FoodModel(
        name: "Asian sesamed salad",
        description:
            "Delite in the floavors Qiuna mixed cucombers, tomoto's bell papers.",
        price: 10.49,
        image: ImageConstant.salads4,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Mandarine oranges", price: 0.49),
          Addon(name: "Almond Slivers", price: 0.49),
          Addon(name: "Extra triyaki Chinken", price: 2.49)
        ]),
    FoodModel(
        name: "South west chicken salad",
        description:
            "This burger is a blue cheese lover's dream. It features a succulent ground beef patty.",
        price: 10.49,
        image: ImageConstant.salads5,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Mandarine oranges", price: 0.49),
          Addon(name: "Almond Slivers", price: 0.49),
          Addon(name: "Extra triyaki Chinken", price: 2.49)
        ]),

    // sides
    FoodModel(
        name: "Pizza",
        description:
            "A classic Italian dish consisting of a round, flat base of dough topped with tomato sauce, cheese, and various toppings",
        price: 12.49,
        image: ImageConstant.sides1,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Extra toppings like pepperon", price: 0.39),
          Addon(name: "Bell peppers", price: 0.49),
          Addon(name: "Extra triyaki Chinken", price: 1.49)
        ]),
    FoodModel(
        name: "Tacos",
        description:
            "Mexican street food made with a corn or wheat tortilla folded or rolled around a filling, typically containing meat, beans, cheese, and salsa.",
        price: 10.49,
        image: ImageConstant.sides2,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Add fresh toppings like lettuce", price: 0.29),
          Addon(name: "Tomatoes, onions", price: 0.9),
          Addon(name: "Serve with a side of salsa", price: .49)
        ]),
    FoodModel(
        name: "Sushi",
        description:
            "A Japanese dish consisting of vinegared rice combined with various ingredients such as seafood (raw or cooked), vegetables, and sometimes tropical fruits, wrapped in seaweed or served as rolls..",
        price: 13.09,
        image: ImageConstant.sides3,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Serve with pickled ginger", price: 0.99),
          Addon(name: "Tomatoes, onions", price: 0.9),
          Addon(name: "Soy sauce for dipping", price: .29)
        ]),
    FoodModel(
        name: "Burgers",
        description:
            "A sandwich consisting of a cooked patty of ground meat (usually beef) placed inside a sliced bread roll or bun. It's often garnished with lettuce, tomato, onion, pickles, and condiments like ketchup or mustard.",
        price: 15.00,
        image: ImageConstant.sides4,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "sautéed mushrooms", price: 1.99),
          Addon(name: "Tomatoes, onions", price: 2.9),
          Addon(name: "cheese (cheddar, Swiss, or blue cheese)", price: 0.29)
        ]),
    FoodModel(
        name: "Stir-fry",
        description:
            "A Chinese cooking technique where ingredients are quickly fried in a hot wok, typically including meat, vegetables, and sauces, such as soy sauce, garlic, and ginger.",
        price: 10.30,
        image: ImageConstant.sides5,
        category: FoodCategory.sides,
        addons: [
          Addon(name: " Add extra vegetables like bell peppers", price: 1.99),
          Addon(name: "Tomatoes, onions", price: 2.9),
          Addon(name: "carrots", price: 2.29)
        ]),

    // dessets
    FoodModel(
        name: "Chocolate Cake",
        description:
            "A rich and indulgent cake made with cocoa powder or melted chocolate, flour, sugar, eggs, and butter. It's typically layered and frosted with chocolate ganache or buttercream icing.",
        price: 10.30,
        image: ImageConstant.dessert1,
        category: FoodCategory.deserts,
        addons: [
          Addon(name: "Garnish with fresh berries", price: 0.99),
          Addon(name: "Chocolate shavings", price: 0.9),
          Addon(name: "carrots", price: 2.29)
        ]),
    FoodModel(
        name: "Cheesecake",
        description:
            "A creamy and dense dessert consisting of a sweetened cream cheese filling on a crust made from crushed cookies, typically graham crackers or digestive biscuits",
        price: 10.30,
        image: ImageConstant.dessert2,
        category: FoodCategory.deserts,
        addons: [
          Addon(
              name: "Sprinkle with crushed nuts or chocolate chips",
              price: 1.99),
          Addon(name: "Chocolate shavings", price: 0.9),
          Addon(name: "Top with fruit compote such as strawberry", price: 0.29)
        ]),
    FoodModel(
        name: "Tiramisu",
        description:
            "An Italian dessert made with layers of coffee-soaked ladyfingers (sponge biscuits) and a creamy mixture of mascarpone cheese, eggs, and sugar, dusted with cocoa powder.",
        price: 12.30,
        image: ImageConstant.dessert3,
        category: FoodCategory.deserts,
        addons: [
          Addon(name: "Chocolate shavings on top", price: 2.99),
          Addon(name: "Traditional Italian experience", price: 0.9),
          Addon(name: "Top with fruit compote such as strawberry", price: 0.29)
        ]),
    FoodModel(
        name: "Fruit Tart",
        description:
            "A dessert consisting of a buttery pastry crust filled with pastry cream or custard and topped with fresh seasonal fruits, such as berries, kiwi, mango, or peaches.",
        price: 12.30,
        image: ImageConstant.dessert4,
        category: FoodCategory.deserts,
        addons: [
          Addon(name: "strawberry jam for a glossy finish", price: 1.99),
          Addon(name: "Sprinkle with powdered sugar", price: 0.9),
          Addon(name: "Extra sweetness and shine", price: 2.29)
        ]),
    FoodModel(
        name: "Ice Cream Sundae",
        description:
            "A classic dessert made by scooping ice cream (usually vanilla) into a bowl and topping it with various sauces (chocolate, caramel, strawberry), nuts, whipped cream, and maraschino cherries",
        price: 12.30,
        image: ImageConstant.dessert5,
        category: FoodCategory.deserts,
        addons: [
          Addon(name: "Sprinkles", price: 0.99),
          Addon(name: "Sprinkle with powdered sugar", price: 2.9),
          Addon(name: "crushed cookies", price: 1.29)
        ]),

    // drinks
    FoodModel(
        name: "Margarita",
        description:
            "A classic cocktail made with tequila, triple sec (orange liqueur), and lime juice, typically served in a salt-rimmed glass over ice.",
        price: 11.30,
        image: ImageConstant.drinks1,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Cointreau ", price: 2.99),
          Addon(name: "Grand Marnier", price: 1.9),
          Addon(name: "Twist on the traditional recipe", price: 0.29)
        ]),
    FoodModel(
        name: "Matcha Latte",
        description:
            "A Japanese-inspired beverage made by whisking high-quality powdered green tea (matcha) with steamed milk, resulting in a vibrant green, frothy drink.",
        price: 11.30,
        image: ImageConstant.drinks2,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Agave syrup", price: 2.99),
          Addon(name: "Grand Marnier", price: 1.9),
          Addon(name: "Flavor and aroma", price: 2.29)
        ]),
    FoodModel(
        name: "Piña Colada",
        description:
            "A tropical cocktail made with rum, coconut cream, and pineapple juice, typically blended with ice until smooth and creamy.",
        price: 15.30,
        image: ImageConstant.drinks3,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Sprinkles", price: 0.99),
          Addon(name: "Sprinkle with powdered sugar", price: 2.9),
          Addon(name: "crushed cookies", price: 1.29)
        ]),
    FoodModel(
        name: "Espresso Martini",
        description:
            "A sophisticated cocktail made with vodka, coffee liqueur (such as Kahlúa), and freshly brewed espresso, shaken with ice and strained into a martini glass.",
        price: 13.30,
        image: ImageConstant.drinks4,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "cocoa powder", price: 2.99),
          Addon(name: "sweetness and texture", price: 1.9),
          Addon(name: "crushed cookies", price: 0.29)
        ]),
    FoodModel(
        name: "Mojito",
        description:
            "A refreshing Cuban cocktail made with white rum, fresh mint leaves, lime juice, sugar, and soda water, served over ice in a highball glass.",
        price: 11.30,
        image: ImageConstant.drinks5,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "raspberries", price: 1.99),
          Addon(name: "sweetness and texture", price: 0.9),
          Addon(name: "Mango slices for a fruity twist", price: 2.29)
        ]),
  ];

  List<FoodModel> get menu => _menu;
}
