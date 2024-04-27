import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_screen.dart';
import 'package:food_delivery_app/screens/login_screen.dart';

class UserLoggedInOrNot extends StatefulWidget {
  const UserLoggedInOrNot({super.key});

  @override
  State<UserLoggedInOrNot> createState() => _UserLoggedInOrNotState();
}

class _UserLoggedInOrNotState extends State<UserLoggedInOrNot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: ((context, snapshot) {
          return Container(
            child: (snapshot.data != null) ? const HomeScreen() : const LoginScreen(),
          );
        }),
        stream: FirebaseAuth.instance.authStateChanges(),
      ),
    );
  }
}
