import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karaoke_app/component/splash_screen_load.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            inputDecorationTheme:const InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.black)
            ),
              primarySwatch: Colors.blue,
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              fontFamily: 'Inter'
          ),
          home: child,
        );
      },
      child: const SplashScreenLoad()
      // AnimatedSplashScreen(
      //   duration: 3000,
      //   splash: const SplashScreen(),
      //   nextScreen: const SplashScreenLoad(),
      //   splashTransition: SplashTransition.scaleTransition,
      //   splashIconSize: 780,
      //   pageTransitionType: ,
      //   backgroundColor: Colors.transparent,
      // ),

    );
  }
}

