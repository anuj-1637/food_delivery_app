import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Food_Items_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Food_Items_Screen();
}

class _Food_Items_Screen extends State<Food_Items_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 20.h),
            child: Image.asset("assets/images/Mask Group.png", width: 300.w),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.h),
            child: Text(
              "Veggie tomato mix",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 120.h, top: 10.h),
            child: Text(
              "N1,900",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffFA4A0C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
