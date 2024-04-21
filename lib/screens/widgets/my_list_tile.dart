import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants/color_constant.dart';

class MyListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const MyListTile(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.title});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(widget.icon,size: 25,color: AppColor.primary,),
            const SizedBox(width: 10,),
            Text(
              widget.title,
              style:  TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: AppColor.primary),
            ),
          ],
        ),
      ),
    );
  }
}
