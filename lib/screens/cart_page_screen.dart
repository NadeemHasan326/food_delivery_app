import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/widgets/common_button.dart';
import 'package:provider/provider.dart';

class CartPagScren extends StatefulWidget {
  const CartPagScren({super.key});

  @override
  State<CartPagScren> createState() => _CartPagScrenState();
}

class _CartPagScrenState extends State<CartPagScren> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (BuildContext context, Resturant value, Widget? child) {
        return Scaffold(
          backgroundColor: AppColor.inversePrimary,
          appBar: AppBar(
            actions: [
              GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Do you want to clear you cart"),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Cancel")),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      value.clearCart();
                                    },
                                    child: const Text("Okay"))
                              ],
                            ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.delete),
                  ))
            ],
            backgroundColor: AppColor.inversePrimary,
            title: const Text("Your cart"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      (value.cart.isNotEmpty)
                          ? Column(
                              children: value.cart
                                  .map((e) => Container(
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.only(bottom: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColor.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: AppColor.grey
                                                              .withOpacity(
                                                                  0.6)),
                                                      child: Image.asset(
                                                        e.foodModel.image ?? "",
                                                        height: 80,
                                                        width: 80,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    SizedBox(
                                                        width: 170,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              e.foodModel
                                                                      .name ??
                                                                  '',
                                                              style: const TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            Text(
                                                              "\$${e.foodModel.price}",
                                                              style: const TextStyle(
                                                                  fontSize: 16),
                                                            )
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(
                                                          top: 20, left: 20),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: AppColor
                                                                .inversePrimary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Row(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                value
                                                                    .removeFromCart(
                                                                        e);
                                                              },
                                                              child: const Icon(
                                                                  Icons.remove),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5),
                                                              child: Text(
                                                                  "${e.quantity}"),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                value.addToCart(
                                                                    e.foodModel,
                                                                    e.selectedAddons);
                                                              },
                                                              child: const Icon(
                                                                  Icons.add),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children:
                                                    e.selectedAddons.map((p) {
                                                  return Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            horizontal: 5,
                                                            vertical: 5),
                                                    margin: const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          color:
                                                              AppColor.black),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text(p.name ?? ''),
                                                        Text("${p.name}")
                                                      ],
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                  .toList(),
                            )
                          : SizedBox(
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: const Center(
                                child: Text(
                                  "Your cart is empty...",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                CommonButton(
                    buttonText: "Go to checkout",
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(Routes.checkoutPage);
                    }),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
