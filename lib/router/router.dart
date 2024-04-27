import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/cart_page_screen.dart';
import 'package:food_delivery_app/screens/checkout_screen.dart';
import 'package:food_delivery_app/screens/food_details_screen.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/screens/login_screen.dart';
import 'package:food_delivery_app/screens/register_screeen.dart';
import 'package:food_delivery_app/screens/settings_screen.dart';

class GenerateRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      case Routes.cartPage:
        return MaterialPageRoute(builder: (context) => const CartPagScren());
      case Routes.checkoutPage:
        return MaterialPageRoute(builder: (context) => const CheckOutScreen());
      case Routes.foodDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => FoodDetailsScreen(
                  food: settings.arguments as FoodModel,
                ));
      default:
        return MaterialPageRoute(builder: (context) => const NoRouteFound());
    }
  }
}

class NoRouteFound extends StatefulWidget {
  const NoRouteFound({super.key});

  @override
  State<NoRouteFound> createState() => _NoRouteFoundState();
}

class _NoRouteFoundState extends State<NoRouteFound> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("No route found")),
    );
  }
}
