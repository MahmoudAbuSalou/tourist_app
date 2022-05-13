

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:tourist_app/HomeLayout/HomePage.dart';
import 'package:tourist_app/Views/Journey/JourneyPage.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';






class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
          (value) =>
          navigatAnimation(context,Journey())

    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: gradiantColors,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter
            ),
          ),
          child: Center(
            child: Image.asset('images/logo.png',

              width: 1000.w,
              height: 1000.h,
            ),
          ),
        )
    );
  }
}

