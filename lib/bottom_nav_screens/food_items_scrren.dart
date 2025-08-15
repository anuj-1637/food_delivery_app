import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/model/provider.dart';
import 'package:provider/provider.dart';

class Food_Items_Screen extends StatefulWidget {
  late List<Map<String, dynamic>> Items;
  late var ind;
  late String listname;
  Food_Items_Screen({
    required this.Items,
    required this.ind,
    required this.listname,
  });
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
            child: widget.listname == 'Drinks'
                ? Padding(
                    padding: EdgeInsets.only(left: 50.w, bottom: 20.h),
                    child: Image.asset(
                      "${widget.Items[widget.ind]['foodImg']}",
                      width: 220.w,
                    ),
                  )
                : Image.asset(
                    "${widget.Items[widget.ind]['foodImg']}",
                    width: 300.w,
                  ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.h),
            child: widget.listname == 'Drinks'
                ? widget.Items[0]['foodName'] ==
                          widget.Items[widget.ind]['foodName']
                      ? Padding(
                          padding: EdgeInsets.only(left: 28.w),
                          child: Text(
                            "${widget.Items[widget.ind]['foodName']}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                        )
                      : Text(
                          "${widget.Items[widget.ind]['foodName']}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        )
                : widget.listname == 'Desserts'
                ? Padding(
                    padding: EdgeInsets.only(left: 39.w, top: 14.h),
                    child: Text(
                      "${widget.Items[widget.ind]['foodName']}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  )
                : Text(
                    "${widget.Items[widget.ind]['foodName']}",
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
              "${widget.Items[widget.ind]['foodPrice']}",
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
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: SizedBox(
              width: 314.w,
              height: 50.h,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffFA4A0C)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  Map m = {"img ": widget.Items[widget.ind]['foodImg']};

                  context.read<databaseProvider>().addData(m);
                },
                child: Text('ADD TO CART', style: TextStyle(fontSize: 17.sp)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
