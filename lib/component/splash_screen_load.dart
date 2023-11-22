import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karaoke_api/api.dart';
import 'package:karaoke_app/page/home/home_page.dart';
import 'package:karaoke_app/page/login/login_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../page/register/register_screen.dart';

class SplashScreenLoad extends StatefulWidget {
  const SplashScreenLoad({Key? key}) : super(key: key);

  @override
  State<SplashScreenLoad> createState() => _SplashScreenLoadState();
}

class _SplashScreenLoadState extends State<SplashScreenLoad> {
  final authApi = AuthApi();

  @override
  void initState() {
    super.initState();
    const Duration(seconds: 5);
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      if (sharedPreferences.containsKey('token')) {
        var response = await authApi.checkLogin();
        if (!response!) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen()));
        }else {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
        }
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircularProgressIndicator()),
    );
  }
}
