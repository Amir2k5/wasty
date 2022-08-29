import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container pageheader(bool portrait){return Container(
              height: portrait ? 700.h : 800.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff4D8D6E), Color(0xff5FB288)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft),
              ),
              width: double.infinity,
              padding: EdgeInsets.only(top: portrait ? 200.h : 100.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Wasty.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: portrait ? 160.sp : 90.sp),
                  ),
                  Text(
                    'think for nature',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: portrait ? 60.sp : 35.sp),
                  )
                ],
              ),
            );}