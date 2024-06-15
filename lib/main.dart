import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/pages/women_category_page.dart';

void main() {
  runApp(MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1080),
      builder: (context, child) => MaterialApp(
        // ignore: deprecated_member_use
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: WomenCategoryPage(),
      ),
    ); 
    
  }
}