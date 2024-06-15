import 'dart:ui';

class GridItem {
  final String path;
  final String itemName;
  final String price;
  final Color bgColor;
  const GridItem( {required this.bgColor,
    required this.path,
    required this.itemName,
    required this.price,
  });
}
