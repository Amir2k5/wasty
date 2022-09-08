import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanIntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context.portrait),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: context.portrait ? 70.h : 0.h,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage('assets/images/topwelcome.png'),
                height: context.portrait ? 700.h : 800.h,
              ),
            ),
            Positioned(
              top: 0.h,
              right: 20.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel_outlined),
                iconSize: context.portrait ? 130.sp : 70.sp,
              ),
            ),
            Positioned(
              bottom: context.portrait ? 200.h : 0.h,
              left: 0,
              right: 0,
              child: Container(
                height: context.portrait ? 1550.h : 1500.h,
                padding: EdgeInsets.symmetric(horizontal: 140.w),
                decoration: BoxDecoration(
                  color: Color(0xff4D8D6E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120.r),
                    topRight: Radius.circular(120.r),
                  ),
                ),
                // child:
              ),
            ),
            Positioned(
              bottom: context.portrait ? 1550.h : 800.h,
              left: context.portrait ? 0 : 10.w,
              right: context.portrait ? 0 : 10.w,
              child: Container(
                padding: EdgeInsets.only(
                    left: 10.w, right: context.portrait ? 10.w : 750.w),
                child: Text(
                  "Scan a product package for detailed structure information and proper recycling location.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: context.portrait ? 60.sp : 40.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: context.portrait ? 580.h : 430.h,
              left: context.portrait ? 0 : null,
              right: context.portrait ? 0 : 50.w,
              child: Container(
                height: 1000.h,
                child: Image(
                  image: AssetImage('assets/images/qrcode.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 400.h,
              right: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.portrait ? 180.w : 450.w),
                child: button(
                  'I Got It!',
                  context.portrait,
                  Colors.white,
                  context.portrait ? Size(1100.w, 200.h) : Size(1100.w, 320.h),
                  context,
                  border: Color(0xff4D8D6E),
                  page: '/scancode',
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                color: Colors.white,
                height: context.portrait ? 280.h : 380.h,
                width: 1440.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    floatingbuttons(
                        Icons.map_outlined, 'Map', context.portrait),
                    floatingbuttons(Icons.newspaper, 'Blog', context.portrait),
                    floatingbuttons(
                        Icons.shopping_bag_outlined, 'Store', context.portrait),
                    floatingbuttons(Icons.campaign_outlined,
                        ElevatedIcon.press.toString(), context.portrait),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
