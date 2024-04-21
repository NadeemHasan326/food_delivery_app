import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final FoodModel food;
  final VoidCallback onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name ?? '',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  Text("\$${food.price?.toString()}",style: const TextStyle(fontWeight: FontWeight.w500,color: AppColor.grey,fontSize: 14),),
                  Text(food.description ?? '',style: const TextStyle(fontSize: 13),),
                ],
              ),
            ),
            Image.asset(
              food.image ?? '',
              height: 80,
              width: 80,
            )
          ],
        ),
      ),
    );
  }
}
