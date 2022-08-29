import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox txfield(String tx,IconData icon,Color iconcolor,Color text,bool portrait,bool obscure,{IconData? icon2}) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      elevation: 8,
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: iconcolor,
            size: portrait ? 120.sp : 60.sp,
          ),
          label: Text(
            tx,
            style: TextStyle(color: text),
          ),
          contentPadding: EdgeInsets.zero,
          suffixIcon: Icon(icon2),
        ),
      ),
    ),
  );
}
