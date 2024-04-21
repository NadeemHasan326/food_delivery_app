import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/widgets/my_description.dart';
import 'package:food_delivery_app/screens/widgets/my_drower.dart';
import 'package:food_delivery_app/screens/widgets/my_food_tile.dart';
import 'package:food_delivery_app/screens/widgets/my_location.dart';
import 'package:food_delivery_app/screens/widgets/my_tap_bar.dart';
import 'package:food_delivery_app/screens/widgets/sliver_app_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrower(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          MySliverAppBar(
            title: MyTabBar(
              tabController: tabController,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  color: AppColor.white,
                ),
                MyLocation(),
                MyDescription(),
              ],
            ),
          )
        ];
      }, body: Consumer<Resturant>(
        builder: (BuildContext context, value, Widget? child) {
          return TabBarView(
            controller: tabController,
            children: _getFoodInThisCategory(value.menu),
          );
        },
      )),
    );
  }

  List<Widget> _getFoodInThisCategory(List<FoodModel> item) {
    return FoodCategory.values.map((e) {
      List<FoodModel> sortedFood =
          item.where((element) => element.category == e).toList();
      return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          itemCount: sortedFood.length,
          itemBuilder: (context, index) => MyFoodTile(
                food: sortedFood[index],
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.foodDetailsScreen,arguments: sortedFood[index]);
                },
              ));
    }).toList();
  }
}
