import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//    DIVIDER ON LOGIN AND SIGN UP PAGE 

Row divider(){return Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.w),
                        child: Text('or connect with'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      )
                    ],
                  );}