import 'dart:ui';

enum Category { handBag, jewellery, footwear, dresses }

class GridItem {
  final String path;
  final String itemName;
  final String price;
  final Color bgColor;
  final Category categroy;
  int size = 16;
  final String discribtion;
  int? numberOfItems = 0;
  bool? loved = false;
  bool? addedToCart = false;
  GridItem({
    this.addedToCart,
    this.loved,
    required this.discribtion,
    this.size = 16,
    this.numberOfItems = 0,
    required this.categroy,
    required this.bgColor,
    required this.path,
    required this.itemName,
    required this.price,
  });
}
