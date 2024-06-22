import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/constants/colors.dart';
import 'package:task_1/models/grid_item.dart';

class CategoryItemPage extends StatefulWidget {
  const CategoryItemPage({super.key, required this.gridItem});
  final GridItem gridItem;
  @override
  State<CategoryItemPage> createState() => _CategoryItemPageState();
}

class _CategoryItemPageState extends State<CategoryItemPage> {
  Map<Category, String> categories = {
    Category.dresses: "dresses",
    Category.footwear: "footwear",
    Category.handBag: "handBag",
    Category.jewellery: "jewellery",
  };
  Color? itemColor;
  @override
  void initState() {
    super.initState();
    itemColor = widget.gridItem.bgColor;
  }

  addToCart() {
    setState(() {
      widget.gridItem.addedToCart = widget.gridItem.addedToCart == false;
      log("message");
    });
  }

  void loveItem() {
    setState(() {
      widget.gridItem.loved = widget.gridItem.loved == false;
    });
  }

  void incrementAdd() {
    setState(() {
      widget.gridItem.numberOfItems = widget.gridItem.numberOfItems! + 1;
    });
  }

  void decrementAdd() {
    setState(() {
      if (widget.gridItem.numberOfItems! > 0) {
        widget.gridItem.numberOfItems = widget.gridItem.numberOfItems! - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: itemColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back_sharp),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ],
      ),
      body: Stack(alignment: Alignment.centerRight, children: [
        Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                color: itemColor,
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aristocratic ${categories[widget.gridItem.categroy]!}",
                          style:
                              TextStyle(color: Colors.white, fontSize: 28.sp),
                        ),
                        Text(
                          widget.gridItem.itemName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // const SizedBox(height: double.maxFinite),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style:
                              TextStyle(color: Colors.white, fontSize: 28.sp),
                        ),
                        Text(
                          "\$${widget.gridItem.price}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      itemColor = widget.gridItem.bgColor;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          itemColor != widget.gridItem.bgColor
                                              ? Border.all(width: 0)
                                              : Border.all(
                                                  color: Color.fromARGB(
                                                      255, 13, 255, 0),
                                                  width: 2,
                                                ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor: widget.gridItem.bgColor,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 24.h,
                                  width: 2,
                                  color: const Color.fromARGB(255, 37, 37, 37),
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: itemColor != myYello
                                          ? Border.all(width: 0)
                                          : Border.all(
                                              color: Color.fromARGB(
                                                  255, 13, 255, 0),
                                              width: 2,
                                            ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          itemColor = myYello;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: myYello,
                                        radius: 8,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: itemColor != myRed
                                          ? Border.all(width: 0)
                                          : Border.all(
                                              color: Color.fromARGB(
                                                  255, 13, 255, 0),
                                              width: 2,
                                            ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          itemColor = myRed;
                                        });
                                      },
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: myRed,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: itemColor != myBlue
                                          ? Border.all(width: 0)
                                          : Border.all(
                                              color: Color.fromARGB(
                                                  255, 13, 255, 0),
                                              width: 2,
                                            ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          itemColor = myBlue;
                                        });
                                      },
                                      child: const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: myBlue,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size"),
                            Text(
                              "${widget.gridItem.size} cm",
                              style: TextStyle(fontSize: 44.sp),
                            )
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      widget.gridItem.discribtion,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: decrementAdd,
                          icon: Icon(Icons.remove),
                        ),
                        Text("${widget.gridItem.numberOfItems}"),
                        IconButton(
                          onPressed: incrementAdd,
                          icon: Icon(Icons.add),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: loveItem,
                          style: IconButton.styleFrom(
                            foregroundColor: widget.gridItem.loved == false
                                ? itemColor
                                : const Color.fromARGB(255, 101, 101, 101),
                          ),
                          icon: Icon(
                            Icons.heart_broken,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 8.h,),
                    Row(
                      children: [
                        IconButton.outlined(
                          onPressed: addToCart,
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  widget.gridItem.addedToCart == false
                                      ? const Color.fromARGB(0, 101, 101, 101)
                                      : itemColor,
                              minimumSize: Size(110.w, 60.h)),
                          icon: Icon(Icons.add_shopping_cart_outlined,
                              color: widget.gridItem.addedToCart == false
                                  ? const Color.fromARGB(255, 101, 101, 101)
                                  : Colors.white),
                        ),
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                              minimumSize: Size(520.w, double.minPositive),
                              foregroundColor: Colors.white,
                              backgroundColor: itemColor),
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style: TextStyle(fontSize: 36.sp),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 80.w, bottom: 75),
          width: 360.w,
          height: 360.h,
          // color: Colors.amber,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.gridItem.path), fit: BoxFit.contain),
          ),
        )
      ]),
    );
  }
}
