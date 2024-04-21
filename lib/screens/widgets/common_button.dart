import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color? color;
  final double? width;
  final double? height;
  const CommonButton(
      {super.key, required this.buttonText, required this.onTap, this.color,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        alignment: Alignment.center,
        height:  height ?? 50,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: color ?? AppColor.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800,color: AppColor.white),
        ),
      ),
    );
  }
}
