import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/Splash_Screen.dart';
import 'package:food_delivery_app/bottom_nav_screens/fav_screen.dart';
import 'package:food_delivery_app/bottom_nav_screens/home_screen.dart';

import 'bottom_nav_screens/history_scrren.dart';
import 'bottom_nav_screens/profile_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Color.fromRGBO(142, 142, 142, 0.1),
        ),
      ),
      home: Splash_Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  List screens = [
    Home_Screen(),
    Fav_Screen(),
    Profile_Screen(),
    History_Screen(),
  ];
  int index = 0;

  void updateIndex(int value) {
    index = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (value) {
          updateIndex(value);
        },
        children: [screens[index]],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: updateIndex,
        elevation: 0,
        backgroundColor: Color.fromRGBO(142, 142, 142, 0.1),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: index == 0
                ? FaIcon(FontAwesomeIcons.house, color: Color(0xffFA4A0C))
                : FaIcon(FontAwesomeIcons.house, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? FaIcon(FontAwesomeIcons.solidHeart, color: Color(0xffFA4A0C))
                : FaIcon(FontAwesomeIcons.heart, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? FaIcon(FontAwesomeIcons.solidUser, color: Color(0xffFA4A0C))
                : FaIcon(FontAwesomeIcons.user, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? FaIcon(FontAwesomeIcons.history, color: Color(0xffFA4A0C))
                : FaIcon(FontAwesomeIcons.history, color: Colors.grey),
            label: "",
          ),
        ],
      ),
    );
  }
}
