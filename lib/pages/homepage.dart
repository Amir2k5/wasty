import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension MediaQueryValues on BuildContext {
  bool get portrait => MediaQuery.of(this).orientation == Orientation.portrait;
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            bottom: context.portrait ? 980.h : -700.h,
            left: 0.w,
            child: SizedBox(
              child: Image(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/blob-2.png'),
                fit: BoxFit.cover,
                height: context.portrait ? 3300.h : 16000.h,
                width: context.portrait ? 1500.w : 1500.w,
              ),
            ),
          ),
          Positioned(
            top: context.portrait ? 200.h : 70.h,
            left: context.portrait ? 0.w : 130.w,
            child: SizedBox(
              child: Image(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/Group 3482.png'),
                fit: BoxFit.cover,
                height: context.portrait ? 1100.h : 1600.h,
                width: context.portrait ? 1600.w : 900.w,
              ),
            ),
          ),
          Positioned(
            top: context.portrait ? 350.h : 150.h,
            left: context.portrait ? 80.w : 900.w,
            child: FittedBox(
              child: Text(
                'Welcome To \nWasty.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: context.portrait ? 90.sp : 70.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 650.h,
            left: context.portrait ? 80.w : 250.w,
            child: SizedBox(
              child: Image(
                image: AssetImage('assets/images/Group 3479.png'),
                fit: BoxFit.contain,
                width: context.portrait ? 1100.w : 500.w,
              ),
            ),
          ),
          Positioned(
            bottom: context.portrait ? 790.h : 500.h,
            left: 170.w,
            child: button(
                'Get Started',
                context.portrait,
                Color(0xff4D8D6E),
                context.portrait ? Size(1100.w, 200.h) : Size(1100.w, 320.h),
                context,
                page: '/signuppage',
                border: Colors.white),
          ),
          Positioned(
            bottom: context.portrait ? 460.h : 150.h,
            left: 170.w,
            child: button(
              'Login ',
              context.portrait,
              Colors.white,
              context.portrait ? Size(1100.w, 200.h) : Size(1100.w, 320.h),
              context,
              page: '/loginpage',
              border: Color(0xff4D8D6E),
            ),
          ),
        ]),
      ),
    );
  }
}
