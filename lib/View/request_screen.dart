import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  bool sumitRequest = false;
  String? request;
  FocusNode myFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return !sumitRequest
        ? Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 246, 246, 246),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text(
                    'Select contact type.',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CarouselSlider(
                    items: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            sumitRequest = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff4D8D6E), width: 2),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 50.sp,
                                ),
                              ),
                              SizedBox(height: 30.h),
                              Text(
                                'Live Call',
                                style: TextStyle(
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D8D6E)),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    borderRadius: BorderRadius.circular(15.r)),
                                height: 70.h,
                                width: 208.w,
                                child: Center(
                                  child: Text(
                                    'Contact our support team',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            sumitRequest = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff4D8D6E), width: 2),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.mail_outline,
                                  color: Colors.white,
                                  size: 50.sp,
                                ),
                              ),
                              SizedBox(height: 30.h),
                              Text(
                                'Message Us',
                                style: TextStyle(
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D8D6E)),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    borderRadius: BorderRadius.circular(15.r)),
                                height: 70.h,
                                width: 208.w,
                                child: Center(
                                  child: Text(
                                    'Send message to our support team',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            sumitRequest = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff4D8D6E), width: 2),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.error,
                                  color: Colors.white,
                                  size: 50.sp,
                                ),
                              ),
                              SizedBox(height: 30.h),
                              Text(
                                'Signal Report',
                                style: TextStyle(
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D8D6E)),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff4D8D6E),
                                    borderRadius: BorderRadius.circular(15.r)),
                                height: 70.h,
                                width: 208.w,
                                child: Center(
                                  child: Text(
                                    'Attach pictures with your request',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        initialPage: 1,
                        viewportFraction: 0.6,
                        height: 300.h,
                        enableInfiniteScroll: false)),
                SizedBox(
                  height: 70.h,
                ),
                Container(
                  height: 231.h,
                  width: 414.w,
                  color: Color(0xff4D8D6E),
                  padding: EdgeInsets.only(left: 18.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Reporting',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Text(
                        'To submit a signal from our platform you need to be a registered user.',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'When filling out the contact form, it is necessary to indicate your preferred way of contacting you.',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 15.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 246, 246, 246),
            padding: EdgeInsets.all(24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact us for container',
                    style: TextStyle(fontSize: 21.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                    onTap: () => showModalBottomSheet(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (context) => BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: BottomSheet(
                          builder: (context) => Container(
                            color: Colors.white,
                            height: 340.h,
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    request = 'I want container';
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'I want container',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    request = 'Become a blogger';
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Become a blogger',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    request = 'Coupons problem';
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Coupons problem',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    request = 'Incorrect point location';
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Incorrect point location',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    request = 'Other';
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Other',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onClosing: () {},
                        ),
                      ),
                    ).then((value) {
                      setState(() {});
                    }),
                    child: Container(
                      padding: EdgeInsets.all(15.w),
                      width: 414.w,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 0))
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            request ?? 'Select type of request.',
                            style: TextStyle(
                                fontSize: 18.sp, color: Color(0xff4D8D6E)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xff4D8D6E),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 224.h,
                    width: 368.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(0, 0))
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: TextFormField(
                      maxLines: null,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type message',
                          hintStyle: TextStyle(
                              color: Color(0xff4D8D6E), fontSize: 16.sp)),
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              contentPadding: EdgeInsets.zero,
                              insetPadding: EdgeInsets.zero,
                              content: Container(
                                height: 464.h,
                                width: 368.w,
                                padding: EdgeInsets.only(
                                  top: 72.h,
                                  left: 40.w,
                                  right: 40.w,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/request.png',
                                      width: 197.w,
                                      height: 168.h,
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),
                                    Text(
                                      'Message send successfully',
                                      style: TextStyle(
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      'We will reply to you as soon as possible.Thank you for the understanding.',
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff4D8D6E),
                                            foregroundColor: Colors.white,
                                            minimumSize: Size(320.w, 56.h),
                                            shape: StadiumBorder()),
                                        child: Text('Got it'))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                        setState(() {
                          sumitRequest = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4D8D6E),
                          foregroundColor: Colors.white,
                          minimumSize: Size(367.w, 56.h),
                          shape: StadiumBorder()),
                      child: Text('Send Request'))
                ],
              ),
            ),
          );
  }
}
