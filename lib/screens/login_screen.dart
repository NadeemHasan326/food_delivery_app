import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/widgets/common_button.dart';
import 'package:food_delivery_app/screens/widgets/common_text_field.dart';
import 'package:food_delivery_app/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: AppColor.primary,
                  size: 40,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Food delivery app",
                  style: TextStyle(color: AppColor.grey, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonTextField(
                  controller: emailController,
                  hintText: "Email",
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                CommonTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                  buttonText: "Login",
                  onTap: () async {
                    AuthServices authServices = AuthServices();
                    await authServices.login(
                        emailController.text, passwordController.text);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account",
                      style: TextStyle(color: AppColor.primary),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Routes.registerScreen);
                      },
                      child: Text(
                        "Register now",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: AppColor.primary),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
