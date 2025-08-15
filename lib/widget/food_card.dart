import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bottom_nav_screens/food_items_scrren.dart';

class foodCard extends StatelessWidget {
  late List<Map<String, dynamic>> foodItems;
  late double width;
  late double top;
  late double left;
  late bool isFood;
  late List img;
  foodCard({
    required this.foodItems,
    this.width = 194.16,
    this.top = -40,
    this.left = 12,
    this.isFood = false,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.separated(
        clipBehavior: Clip.none,
        itemCount: foodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Food_Items_Screen()),
              );
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Container(
                    width: 200.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 120),
                      child: Column(
                        children: [
                          Text(
                            "    ${foodItems[index]['foodName']}",
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            foodItems[index]['foodPrice'],
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Color(0xffFA4A0C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: top.h,
                  left: left.w,
                  width: width.w,

                  child: isFood
                      ? CircleAvatar(
                          radius: 70.r,
                          backgroundImage: AssetImage(
                            foodItems[index]['foodImg'],
                          ),
                        )
                      : Image.asset(foodItems[index]['foodImg']),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 20.w);
        },
      ),
    );
  }
}
