import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//    DIVIDER ON LOGIN AND SIGN UP PAGE 

Widget divider() {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: const Text('or connect with'),
        ),
        const Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 2,
          ),
        )
      ],
    );
  }