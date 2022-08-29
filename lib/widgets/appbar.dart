import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appbar(bool portrait){return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          SizedBox(
            width:1440.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80.w,
                ),
                Text(
                  'wasty.',
                  style: TextStyle(
                      color: Color(0xff4D8D6E),
                      fontSize:portrait? 130.sp:70.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width:portrait? 310.w:700.w,
                ),
                Container(
                  padding: EdgeInsets.only(top:portrait? 20.h:90.h),
                  child: Image(
                    image: AssetImage('assets/images/balance.png'),
                  ),
                ),
                SizedBox(
                  width:portrait? 40.w:80.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size:portrait? 130.sp:90.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      );}