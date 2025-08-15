import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/widget/food_card.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Home_Screen_State();
  }
}

class Home_Screen_State extends State<Home_Screen> {
  PageController controller = PageController();
  var pageNumber = 0;
  late List img;
  List items = ["Foods", "Drinks", "Snacks", "Desserts"];

  List<Map<String, dynamic>> foodItems = [
    {
      "foodImg": "assets/images/Mask Group.png",
      "foodName": "Veggie tomato mix",
      "foodPrice": "N1,900",
    },
    {
      "foodImg": "assets/images/Mask Group (1).png",
      "foodName": "Lobster Thermidor",
      "foodPrice": "N2,300",
    },
    {
      "foodImg": "assets/images/Mask Group (2).png",
      "foodName": "Wellington",
      "foodPrice": "N1,00",
    },
    {
      "foodImg": "assets/images/Mask Group (3).png",
      "foodName": "Moroccan Lamb Tagine",
      "foodPrice": "N1,900",
    },
  ];

  List<Map<String, dynamic>> drinkItems = [
    {
      "foodImg": "assets/images/drink_2.jpg",
      "foodName": "Virgin Mojito",
      "foodPrice": "N1,900",
    },
    {
      "foodImg": "assets/images/drink_3.jpg",
      "foodName": "Blue Lagoon Mocktail",
      "foodPrice": "N2,300",
    },
  ];
  List<Map<String, dynamic>> snacksItems = [
    {
      "foodImg": "assets/images/snacks_1.jpg",
      "foodName": "Stuffed Mushroom Caps",
      "foodPrice": "N1,900",
    },
    {
      "foodImg": "assets/images/snack_2.jpg",
      "foodName": "Prawn Tempura",
      "foodPrice": "N2,300",
    },
  ];

  List<Map<String, dynamic>> dessertsItems = [
    {
      "foodImg": "assets/images/dessert_1.jpg",
      "foodName": "Tiramisu",
      "foodPrice": "N1,900",
    },
    {
      "foodImg": "assets/images/dessert_2.jpg",
      "foodName": "Crème Brûlée",
      "foodPrice": "N2,300",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(142, 142, 142, 0.1),
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
                          pageNumber = index;
                        });
                      },
                      child: Container(
                        width: 130,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: pageNumber == index ? Color(0xffFA4A0C) : null,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Text(
                          "${items[index]}",
                          style: TextStyle(
                            color: pageNumber == index
                                ? Colors.white
                                : Colors.grey,
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
            SizedBox(height: 40.h),

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
                  if (index == 0) {
                    return foodCard(foodItems: foodItems);
                  } else if (index == 1) {
                    return foodCard(
                      foodItems: drinkItems,
                      width: 140,
                      left: 40,
                      isFood: true,
                    );
                  } else if (index == 2) {
                    return foodCard(
                      foodItems: snacksItems,
                      width: 120,
                      isFood: true,
                      left: 40,
                    );
                  } else if (index == 3) {
                    return foodCard(
                      foodItems: dessertsItems,
                      width: 130,
                      isFood: true,
                      left: 40,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
