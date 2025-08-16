import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Cart_Screen_State();
}

class Cart_Screen_State extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.only(top: 70.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 110.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sf Pro",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 300.w,
              height: 100.h,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(top: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10.w),
                      Image.asset(
                        "assets/images/Mask Group.png",
                        width: 100.w,
                        height: 90.h,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 6.w),
                      Padding(
                        padding: EdgeInsets.only(top: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Veggie tomato mix",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sf Pro",
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "N1,900",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sf Pro",
                                color: Color(0xffFA4A0C),
                              ),
                            ),
                            // SizedBox(height: 10.h),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.minimize),
                                ),
                                SizedBox(width: 10.w),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
