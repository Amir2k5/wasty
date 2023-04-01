import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'shoppingbag1',
              child: Image.asset(
                'assets/images/shoppingbag2.png',
                width: 413.w,
                height: 288.h + kTextTabBarHeight,
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: Column(
                children: [
                  Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat",
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: AlertDialog(
                              alignment: Alignment.lerp(
                                  Alignment.center, Alignment.topCenter, 0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              insetPadding: EdgeInsets.all(20.sp),
                              contentPadding: EdgeInsets.all(10.sp),
                              content: Container(
                                  height: 457.h,
                                  width: 408.w,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/person.png',
                                        width: 163.w,
                                        height: 136.h,
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Text(
                                        'Confirm your purchase.',
                                        style: TextStyle(
                                            fontSize: 23.sp,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Image.asset(
                                        'assets/images/shoppingbag3.png',
                                        width: 278.w,
                                        height: 96.h,
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          style: ElevatedButton.styleFrom(
                                              minimumSize: Size(320.w, 56.h),
                                              shape: StadiumBorder(),
                                              backgroundColor:
                                                  Color(0xff4D8D6E)),
                                          child: Text('Get it now'))
                                    ],
                                  )),
                            ),
                          ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(358.w, 56.h),
                    shape: StadiumBorder(),
                    backgroundColor: Color(0xff4D8D6E)),
                child: Text('Get your voucher now'))
          ],
        ),
      ),
    );
  }
}
