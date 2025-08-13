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
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Delivery info",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Delivered between monday aug and\nthursday 20 from 8pm to 91:32 pm",
              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Return policy",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "All our foods are double checked before\nleaving our stores so by any case you\nfound a broken food please contact our\nhotline immediately.",
              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text('')),
        ],
      ),
    );
  }
}
