import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
        unselectedLabelStyle: TextStyle(
          color: const Color.fromRGBO(158, 158, 158, 1),
          fontSize: 28.sp,
        ),
        labelPadding: EdgeInsets.zero,
        labelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: const Color.fromARGB(0, 255, 193, 7),
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black, width: 2),
          ),
        ),
        tabs: const [
          Tab(
            child: Text(
              "Hand Bag",
            ),
          ),
          Tab(
            child: Text(
              "Jewellery",
            ),
          ),
          Tab(
            child: Text(
              "Footwear",
            ),
          ),
          Tab(
            child: Text(
              "Dresses",
            ),
          ),
        ]);
  }
}
