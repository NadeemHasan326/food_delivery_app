import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/widgets/common_button.dart';
import 'package:provider/provider.dart';

class FoodDetailsScreen extends StatefulWidget {
  final FoodModel? food;
  const FoodDetailsScreen({super.key, required this.food});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: AppColor.grey),
                    ),
                    Image.asset(
                      widget.food?.image ?? '',
                      height: 300,
                      width: double.infinity,
                    ),
                  ],
                ),
                // const SizedBox(height: 20,),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food?.name ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.6),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$${widget.food?.price}",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.food?.description ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            letterSpacing: 0.7),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        color: AppColor.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Add-ons",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.black.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(5)),
                          // padding: EdgeInsets.all(20),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: widget.food?.addons?.length ?? 0,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: CheckboxListTile(
                                title: Text(
                                    widget.food?.addons?[index].name ?? ''),
                                subtitle: Text(
                                    "\$${widget.food?.addons?[index].price}"),
                                contentPadding: EdgeInsets.zero,
                                value: widget.food?.addons?[index].isSelected,
                                onChanged: (value) {
                                  widget.food?.addons?[index].isSelected =
                                      value!;
                                  setState(() {});
                                },
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      CommonButton(
                          buttonText: "Add to cart",
                          onTap: () {
                            context.read<Resturant>().addToCart(
                                widget.food!,
                                widget.food?.addons
                                        ?.where((element) => element.isSelected)
                                        .toList() ??
                                    []);
                            Navigator.of(context).pushNamed(Routes.homeScreen);
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: GestureDetector(
                onTap: _moveBack,
                child: const Opacity(
                  opacity: 0.7,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColor.white,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                  ),
                )),
          ),
        )
      ],
    );
  }

  _moveBack() {
    Navigator.of(context).pop();
  }
}
