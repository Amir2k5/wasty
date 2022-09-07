import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//    TEXTFIELDS ON LOGIN AND SIGN UP PAGE


SizedBox txfield(String tx,IconData icon,Color iconcolor,Color text,bool portrait,bool obscure,TextEditingController controller,{IconData? icon2}) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      elevation: 8,
      child: TextField(
        controller:controller,
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

