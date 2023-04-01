import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//       APP BAR OF MAP PAGE

AppBar appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 24.w,
          ),
          Text(
            'wasty.',
            style: TextStyle(
                color: Color(0xff4D8D6E),
                fontSize: 36.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 70.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Image(
              image: AssetImage('assets/images/balance.png'),
            ),
          ),
          SizedBox(
            width: 35.w,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 28.sp,
            ),
          ),
        ],
      ),
    ],
  );
}
