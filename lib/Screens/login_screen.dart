import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

import '../main.dart';
import 'home_screen.dart';

class Login_Screen extends StatefulWidget{
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Artboard? artboard;
  StateMachineController? controller;
  SMIBool? islookingDown, eyeclose;
  SMINumber? lookindDirection;
  SMITrigger? success, fail;

  void initState() {
    super.initState();
    loadriveanimation();
  }

  loadriveanimation() async{
   await  rootBundle.load("assets/rive/animated_login_character.riv").then((data){
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller = StateMachineController.fromArtboard(artboard, "Login Machine");
    if(controller!=null) {
      artboard.addController(controller!);
      islookingDown = controller.findSMI('isChecking');
      lookindDirection = controller.findSMI('numLook');
      eyeclose = controller.findSMI('isHandsUp');
      success = controller.findSMI('trigSuccess');
      fail = controller.findSMI('trigFail');
    }
      setState(() {
        this.artboard = artboard;
        this.controller = controller;
      });
  });}

  checkkey(){
    if(emailController.text=="Jatin" && passwordController.text =="rana"){
      success!.value= true;
    }else{
      fail!.value= true;
    }
  }

  // void dispose() {
  //   super.dispose();
  //   controller!.stop();
  // }
  @override
  Widget build(BuildContext context) {
  return  DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled)=>[
              SliverAppBar(
                expandedHeight: 362,
                flexibleSpace: FlexibleSpaceBar(
                 background:  artboard== null?CircularProgressIndicator():Rive(artboard: artboard!),
                ),
                // snap: true,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(11,11),
                  ),
                ),
                bottom: TabBar(tabs: [
                  Tab(text: "Login",),
                  Tab(text: "Sign Up",),
                ]),
              )
            ]
            , body: TabBarView(children: [

              Padding(
                padding: const EdgeInsets.only(top: 40,left: 50 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 314,
                      height: 59,
                      child: TextField(
                        controller: emailController,
                        onChanged: (value){
                          islookingDown!.value= true;
                          lookindDirection!.value =double.parse(value.length.toString());
                        },
                        onSubmitted: (value){
                          islookingDown!.value= false;
                        },
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          labelStyle: TextStyle(fontSize: 20),
                          labelText: 'Email address',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 314,
                      height: 59,
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value){
                          eyeclose!.value= true;
                        },
                        onSubmitted: (value){
                          eyeclose!.value= false;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Forgot Password?", style: TextStyle(color: Color(0xffFA4A0C), fontSize: 18,fontWeight: FontWeight.w600, fontFamily: "Sf Pro"),),
                    ),
                    SizedBox(
                      height: 140,
                    ),
                    Container(
                      width: 314,
                      height: 70,
                      decoration: BoxDecoration(
                        // color: Color(0xffFA4A0C),
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xffFA4A0C)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                          ),
                          onPressed: (){
                            checkkey();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                          }, child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white))),
                    )
                  ]
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 50 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 314,
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: 'Email address',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 314,
                  height: 59,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                SizedBox(
                  height: 210,
                ),
                Container(
                  width: 314,
                  height: 70,
                  decoration: BoxDecoration(
                    // color: Color(0xffFA4A0C),
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xffFA4A0C)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                      ),
                      onPressed: (){
                        checkkey();
                      }, child: Text("Sign Up", style: TextStyle(fontSize: 20, color: Colors.white))),
                )
              ],
            ),
          )
        ]),
      )));

  }
}