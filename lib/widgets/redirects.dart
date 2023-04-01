import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// REDIRECTS TO LOGIN OR SIGN UP FOR THIS APP

Widget redirects(String image, String platform) {
  return Container(
    height: 48.h,
    width: 165.w,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.sp,
          width: 30.sp,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(platform)
      ],
    ),
  );
}
