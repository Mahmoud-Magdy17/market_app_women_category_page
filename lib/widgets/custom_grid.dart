import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_1/constants/women_handbag.dart';
import 'package:task_1/widgets/custom_grid_item.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => CustomGridItem(
        gridItem: handBagItemList[index],
      ),
      itemCount: handBagItemList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        childAspectRatio: 0.60,
      ),
    );
  }
}
