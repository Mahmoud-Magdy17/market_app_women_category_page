import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/models/grid_item.dart';
import 'package:task_1/widgets/custom_grid_item.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key});
  final List<GridItem> gridItemList = const [
    GridItem(bgColor: Color(0xff4382B1), path: "lib/assets/images/bag_1.png", itemName: "Office Code", price: "234\$"),
    GridItem(bgColor: Color(0xffD3A885), path: "lib/assets/images/bag_2.png", itemName: "Belt Bag", price: "234\$"),
    GridItem(bgColor: Color(0xff9A9494), path: "lib/assets/images/bag_3.png", itemName: "Hang Up", price: "234\$"),
    GridItem(bgColor: Color(0xffE5B39A), path: "lib/assets/images/bag_4.png", itemName: "Old Fation", price: "234\$"),
    GridItem(bgColor: Color(0xffF77C81), path: "lib/assets/images/bag_5.png", itemName: "Binky Bink", price: "234\$"),
    GridItem(bgColor: Color(0xffAEAEB0), path: "lib/assets/images/bag_6.png", itemName: "Gentle Black", price: "234\$"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => CustomGridItem(
        gridItem: gridItemList[index],
      ),
      itemCount: gridItemList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        childAspectRatio: 0.60,
      ),
    );
  }
}
