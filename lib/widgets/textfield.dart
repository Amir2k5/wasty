import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//    TEXTFIELDS ON LOGIN AND SIGN UP PAGE

Widget txfield(
    String tx, IconData icon, Color iconcolor, TextEditingController controller,
    {IconData? icon2, bool obscure = false}) {
  return SizedBox(
    width: double.infinity,
    height: 57.h,
    child: Card(
      elevation: 3,
      child: TextField(
        scrollPadding: EdgeInsets.zero,
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: iconcolor,
            size: 23.sp,
          ),
          hintText: tx,
          hintStyle: TextStyle(color: iconcolor),
          // contentPadding: EdgeInsets.zero,
          suffixIcon: Icon(icon2),
        ),
      ),
    ),
  );
}
