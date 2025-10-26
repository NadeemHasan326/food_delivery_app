import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/router/router.dart';
import 'package:food_delivery_app/screens/user_logged_in_or_not.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => Resturant())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Food Delivery app',
      debugShowCheckedModeBanner: false,
      home: UserLoggedInOrNot(),
      onGenerateRoute: GenerateRoutes.generateRoute,
    );
  }
}
