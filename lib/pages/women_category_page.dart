import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/widgets/custom_grid.dart';
import 'package:task_1/widgets/custom_tabbar.dart';

class WomenCategoryPage extends StatelessWidget {
  const WomenCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_sharp,
            color: Color.fromARGB(255, 161, 161, 161),
            size: 32,
          ),
          actionsIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 161, 161, 161),
            size: 32,
          ),
          actions: const [
            Icon(
              Icons.search,
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.0,left: 20),
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Women",
                style: TextStyle(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 60.h,
                child: const CustomTabBar(),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 840.h,
                child: const TabBarView(children: [
                  CustomGrid(),
                  // Text("Jewellery"),
                  Text("Jewellery"),
                  Text("Footwear"),
                  Text("Dresses"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
