import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/router/routes.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 270,
      backgroundColor: AppColor.inversePrimary,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.cartPage);
              },
              child: const Icon(Icons.shopping_cart)),
        )
      ],
      title: const Text("Sunset dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        titlePadding: EdgeInsets.zero,
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
      ),
    );
  }
}
