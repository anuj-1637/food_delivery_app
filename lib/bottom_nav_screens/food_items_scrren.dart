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
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.h),
        child: Column(
          children: [
            Image.asset("assets/images/Mask Group.png", width: 300.w),

            Text(
              "Hei",
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
