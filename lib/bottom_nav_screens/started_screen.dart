import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/login_screen.dart';


class Started_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xffFA4A0C),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 49,top:56),
          child: Container(
            height: 73,
            width: 73,
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(10),
              shape: BoxShape.circle
            ),
            child: Image.asset("assets/images/app_logo.png",fit: BoxFit.contain,) ,
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 49),
          child: Text("Food for\nEveryone", style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.w900 , fontFamily: "Sf Pro"),),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                  left: 170.94,
                  top: 135,
                  child: Image.asset("assets/images/ToyFaces_men.png",width: 240.4,height: 338.54,fit: BoxFit.cover,)
              ),
              Positioned(
                left: 0,
                top: 60,
                child: Image.asset("assets/images/ToyFaces_women.png",width: 278.1,height: 410.36,fit: BoxFit.cover,),)
              ,
              Positioned(
                left: 170.12,
                top: 290,
                child: Image.asset("assets/images/Rectangle 3.png",),
              ),
              Positioned(
                left: -200,
                top: 190,
                child: Image.asset("assets/images/Rectangle 5.png",),
              ),
             Positioned(
                 top: 500,
                 left: 51,
                 child: Container(
                   width: 314,
                   height: 70,
                   child: ElevatedButton(
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(Colors.white),
                         shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))
                     ),
                       onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Screen()));
                       },
                       child: Text("Get Starteed", style: TextStyle(color:Color(0xffFA4A0C),fontSize: 16,fontWeight: FontWeight.w600 , fontFamily: "Sf Pro")),
                   ),
                 )
             )

            ],
          ),
        ),

      ],
    ),
  );
  }
}