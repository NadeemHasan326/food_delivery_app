import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';
import 'package:food_delivery_app/router/routes.dart';
import 'package:food_delivery_app/screens/widgets/my_list_tile.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            const Icon(
              Icons.lock,
              size: 40,
              color: AppColor.grey,
            ),
            const Divider(
              color: AppColor.white,
            ),
            MyListTile(
              title: 'H O M E',
              icon: Icons.home,
              onTap: () {
                _moveToBack(context);
              },
            ),
            MyListTile(
              title: 'S E T  T I N G S',
              icon: Icons.settings,
              onTap: () {
                _moveToBack(context);
                Navigator.of(context).pushNamed(Routes.settingsScreen);
              },
            ),
            const Spacer(),
            MyListTile(
              title: 'L O G O U T',
              icon: Icons.logout,
              onTap: () {},
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

  _moveToBack(BuildContext context){
    Navigator.of(context).pop();
  }
}
