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
  PageController controller = PageController();
  var pageNumber = 0;
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
            SizedBox(
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          controller.jumpToPage(index);
                        });
                      },
                      child: Container(
                        child: Text(
                          "${items[index]}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.w);
                  },
                ),
              ),
            ),
            SizedBox(height: 30.h),

            SizedBox(
              height: 200.h,
              child: PageView.builder(
                controller: controller,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                onPageChanged: (value) {
                  setState(() {
                    pageNumber = value;
                  });
                },
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 180.h,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Stack(
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
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    top: 120,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "    Veggie\ntomato mix",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "N1,900",
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
                              top: -40.h,
                              left: 12.w,
                              width: 194.16.w,
                              child: Image.asset(
                                "assets/images/Mask Group.png",
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20.w);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
