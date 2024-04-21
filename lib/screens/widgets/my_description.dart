import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.white),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildItem("\$0.99","Delivery fees"),
          _buildItem("10-20 mins","Delivery time"),
        ],
      ),
    ),
          const SizedBox(height: 50,)

      ],
    );
  }

  Widget _buildItem(String title,String subTitle){
    return Column(children: [
      Text(title,style: const TextStyle(color: Color.fromARGB(255, 180, 177, 177)),),
      Text(subTitle),
    ],);
  }
}