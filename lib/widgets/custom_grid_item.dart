import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/models/grid_item.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({super.key, required this.gridItem});
  final GridItem gridItem;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300.h,
            decoration: BoxDecoration(
              color: gridItem.bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            width: double.infinity,
            child: Image.asset(
              gridItem.path,
            ),
          ),
          Text(
            gridItem.itemName,
            style: const TextStyle(color: Color(0xffc8c6c9)),
          ),
          Text(gridItem.price),
        ],
      ),
    );
  }
}
