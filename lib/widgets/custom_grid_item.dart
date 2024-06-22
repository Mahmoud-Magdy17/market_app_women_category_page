import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/models/grid_item.dart';
import 'package:task_1/pages/category_item_page.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({super.key, required this.gridItem});
  final GridItem gridItem;
  @override
  Widget build(BuildContext context) {
    return CardItem(gridItem: gridItem);
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.gridItem,
  });

  final GridItem gridItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=> CategoryItemPage(gridItem: gridItem))
        );
      },
      child: SingleChildScrollView(
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
      ),
    );
  }
}
