import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/screens/widgets/common_button.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.inversePrimary,
      appBar: AppBar(
        title: const Text("Checkout"),
        backgroundColor: AppColor.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    showBackView: showBackView,
                    onCreditCardWidgetChange: (p0) {}),
                CreditCardForm(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    onCreditCardModelChange: (data) {
                      cardNumber = data.cardNumber;
                      cardHolderName = data.cardHolderName;
                      cvvCode = data.cvvCode;
                      expiryDate = data.expiryDate; 
                      setState(() {});
                    },
                    formKey: _formKey)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CommonButton(buttonText: "Pay", onTap: () {}),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
