import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void alert(BuildContext ctx, BuildContext ct, bool portrait) {
  showDialog(
      context: ctx,
      builder: (_) {
        Future.delayed(Duration(seconds: 3), () => Navigator.of(_).pop());
        return Stack(
          children: [
            AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.topCenter,
              contentPadding: EdgeInsets.all(0),
              insetPadding:
                  EdgeInsets.only(top: ElevatedIcon.press ? 280.h : 400.h),
              content: Container(
                margin: EdgeInsets.zero,
                height: portrait ? 390.h : 600.h,
                width: 1380.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 30.h,
                      left: 25.w,
                      child: Icon(
                        Icons.person,
                        color: Color(0xff4D8D6E),
                        size: portrait ? 120.sp : 60.sp,
                      ),
                    ),
                    Positioned(
                      top: 55.h,
                      left: 150.w,
                      child: Text(
                        'User Current Location (location)',
                        style: TextStyle(fontSize: portrait ? 50.sp : 30.sp),
                      ),
                    ),
                    Positioned(
                      bottom: 25.h,
                      left: 30.w,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: portrait ? 100.sp : 50.sp,
                      ),
                    ),
                    Positioned(
                      bottom: 55.h,
                      left: 150.w,
                      child: Text(
                        'End Point Destination (Destination)',
                        style: TextStyle(fontSize: portrait ? 50.sp : 30.sp),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff4D8D6E),
                        ),
                        child: Center(
                          widthFactor: 1.3,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: (ElevatedIcon.press ? '99' : '5'),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: portrait ? 90.sp : 60.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '%\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: portrait ? 50.sp : 30.sp,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Reached',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: portrait ? 60.sp : 40.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50.h,
              left: 0,
              right: 0,
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.bottomCenter,
                contentPadding: EdgeInsets.all(0),
                insetPadding:
                    EdgeInsets.only(bottom: ElevatedIcon.press ? 180.h : 400.h),
                content: Container(
                  margin: EdgeInsets.zero,
                  height: portrait ? 330.h : 600.h,
                  width: 1380.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3 km',
                            style: TextStyle(
                              fontSize: portrait ? 90.sp : 60.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Distance',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 70.sp),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10 min',
                            style: TextStyle(
                              fontSize: portrait ? 90.sp : 60.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Arrival time',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 70.sp),
                          )
                        ],
                      ),
                      Icon(
                        Icons.more_vert,
                        size: 120.sp,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff4D8D6E),
                        radius: 120.r,
                        child: IconButton(
                          icon: Icon(
                            
                            Icons.commute,
                            color: Colors.white,
                            size: 120.sp,
                          ),
                          onPressed: () {
                          //   Navigator.of(_).pop();
                          //   showDialog(context: _, builder:(_)=> choosedialog(portrait));
                          //   print('called');
                            },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }).then((value) {
    showDialog(
        context: ct,
        builder: (_) {
          return AlertDialog(
            alignment: Alignment.topCenter,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.only(top: portrait ? 280.h : 200.h),
            content: Container(
              margin: EdgeInsets.zero,
              color: Colors.white,
              height: portrait ? 1700.h : 2000.h,
              width: 1380.w,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: portrait ? 80.h : 10.h),
                    decoration: BoxDecoration(
                      color: Color(0xff5D977B),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                    height: portrait ? 500.h : 700.h,
                    width: 1380.w,
                    child: Row(
                      mainAxisAlignment: portrait
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Congratulation',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Image(
                          image: AssetImage('assets/images/cartoon.png'),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "You have successfully reached your\ndestination at a waste recycling point.",
                    style: TextStyle(
                        fontSize: portrait ? 60.sp : 35.sp,
                        fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    "To stimulate your recycling activity\nyou will rcerive Wasty Coins that you\ncan use as a discount to our partners.",
                    style: TextStyle(
                      fontSize: portrait ? 60.sp : 30.sp,
                    ),
                  ),
                  SizedBox(
                    height: portrait ? 100.h : 60.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 213, 237, 204),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: portrait ? 250.h : 400.h,
                    width: portrait ? 650.w : 300.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: portrait ? 70.r : 100.r,
                          backgroundColor: Color(0xff4D8D6E),
                          foregroundColor: Colors.white,
                          child: Text(
                            'W',
                            style: TextStyle(
                                fontSize: portrait ? 90.sp : 45.sp,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2),
                          ),
                        ),
                        Text(
                          '+ 56',
                          style: TextStyle(
                              color: Color(0xff4D8D6E),
                              fontWeight: FontWeight.bold,
                              fontSize: portrait ? 80.sp : 40.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              button('Close', portrait, Colors.white, Size(600.w, 220.h), _,
                  border: Color(0xff4D8D6E)),
              Padding(
                padding: EdgeInsets.only(right: 40.w),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4D8D6E),
                    onPrimary: Colors.white,
                    minimumSize: Size(600.w, 220.h),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: Text('My Coupons'),
                ),
              ),
            ],
          );
        });
  });
}



// AlertDialog choosedialog(bool portrait){return  AlertDialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 alignment: Alignment.bottomCenter,
//                 contentPadding: EdgeInsets.all(0),
//                 insetPadding:
//                     EdgeInsets.only(bottom: ElevatedIcon.press ? 280.h : 400.h),
//                 content: Container(
//                   margin: EdgeInsets.zero,
//                   height: portrait ? 380.h : 600.h,
//                   width: 1380.w,
//                   child: Column(children: [Text("How will you reach",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50.sp),),
                  
//                   ],),
                  
//                 ),
//               );
//               }