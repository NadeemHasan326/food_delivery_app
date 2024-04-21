import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  _openLocationBottomSheet(BuildContext context) {
    // showDialog(context: context, builder: (context) => AlertDialog(
    //   content: AboutDialog(),
    // ))
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Delivered now",
              style: TextStyle(color: AppColor.grey),
            ),
            InkWell(
              onTap: () {
                _openLocationBottomSheet(context);
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text("Noida Sector-5"), Icon(Icons.arrow_downward)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
