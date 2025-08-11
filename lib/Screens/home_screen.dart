import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_Screen_State();
  }
}

class Home_Screen_State extends State<Home_Screen> {
  List items = [
    "Foods",
    "Drinks",
    "Snacks",
    "Desserts",
    "Beverages",
    "Snacks",
    "Desserts",
    "Beverages",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/svg/sideMenu.svg",
              width: 25.w,
              color: Colors.grey,
            ),
          ),
        ),
        actionsPadding: EdgeInsets.only(right: 20.w),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/cart.svg", width: 25.w),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(142, 142, 142, 0.1),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delicious\nfood for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'SF Pro',
                fontSize: 32.sp,
              ),
            ),

            SizedBox(height: 25.h),
            Container(
              width: 314.w,
              decoration: BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Icon(Icons.search, color: Colors.black, size: 26.sp),
                  ),
                  hintText: "Search for food",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.grey.shade50,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${items[index]}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20.w),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10.h),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 10,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         elevation: 10,
            //         child: Container(
            //           width: 220.w,
            //           height: 270.h,
            //
            //           child: Stack(children: []),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
