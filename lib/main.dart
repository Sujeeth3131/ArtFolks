import 'package:art_folks/module/bottomnavigation/feed/feedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'module/aunthetication/login/login_screen.dart';
import 'module/bottomnavigation/bottom_screen.dart';
import 'module/bottomnavigation/groups/group_screen.dart';
import 'module/bottomnavigation/home/home_screen.dart';
import 'module/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context , child) =>MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child:GroupScreen()
    );
  }
}
