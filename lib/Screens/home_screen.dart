import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Home_Screen_State();
  }

}
class Home_Screen_State extends State<Home_Screen>{


  List items =[
    "Foods", "Drinks", "Snacks", "Desserts", "Beverages", "Snacks", "Desserts", "Beverages",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/svg/sideMenu.svg",width: 25,color: Colors.grey,),),
          ),
          actionsPadding: EdgeInsets.only(right: 20),
          actions: [
            IconButton(onPressed: (){},
                icon: SvgPicture.asset("assets/svg/cart.svg",width: 25)),
          ] ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30,top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delicious\nfood for you" ,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'SF Pro', fontSize: 32),),

            SizedBox(height: 25,),
            Container(
              width: 314,
              decoration: BoxDecoration(

              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.search,color: Colors.black,size: 26,),
                  ),
                  hintText: "Search for food",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.grey.shade50,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  )
                ),
              ),
            ),
            SizedBox(height: 23,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${items[index]}",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                    ]
                  );
                }),
              ),
            )

          ],
        ),
      ),
    );
  }
}