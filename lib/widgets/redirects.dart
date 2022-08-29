import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InkWell redirects(
    String image, String platform, double height, double width, bool portrait) {
  return InkWell(
    onTap: () {},
    child: Container(
      height:portrait? 170.h:300.h,
      width: 570.w,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height:portrait? height:height*2.3,
          width: portrait?width:width*0.5,
          child: Center(
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 50.w,),
        Text(platform)
      ]),
    ),
  );
}
