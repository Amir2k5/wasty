import 'package:app6/main.dart';
import 'package:app6/pages/homepage.dart';
import 'package:app6/pages/mappage.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanResult extends StatelessWidget {
  String? barcode;
  ScanResult(this.barcode);
  @override
  Widget build(BuildContext context) {
    rebuild() {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MapPage()));
    }

    Column circle(int percent, String label) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            height: context.portrait ? 290.h : 430.h,
            width: context.portrait ? 290.h : 430.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xffE9BD60),
                width: 2,
              ),
              color: Colors.transparent,
            ),
            child: CircleAvatar(
              child: Text(
                '$percent\n %',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color(0xffE9BD60),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: Color(0xffE9BD60),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: appbar(context.portrait),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 50.h),
            width: double.infinity,
            height: 1000.h,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bag.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 85.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Resuable Canvas Bag",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 80.sp),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
                  style:
                      TextStyle(fontSize: 65.sp, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    circle(45, 'Cotton'),
                    circle(35, 'Polyester'),
                    circle(25, 'Lycra'),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    button('Close', context.portrait, Colors.white,
                        Size(620.w, 200.h), context,
                        border: Color(0xff4D8D6E)),
                    ElevatedIcon(rebuild, context)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
