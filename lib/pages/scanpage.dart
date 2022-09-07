import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context.portrait),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 70.h,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage('assets/images/topwelcome.png'),
                height: 700.h,
              ),
            ),
            Positioned(
              top: 0.h,
              right: 20.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel_outlined),
                iconSize: 130.sp,
              ),
            ),
            Positioned(
              bottom: 200.h,
              left: 0,
              right: 0,
              child: Container(
                height: 1550.h,
                padding: EdgeInsets.symmetric( horizontal: 140.w),
                decoration: BoxDecoration(
                  color: Color(0xff4D8D6E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120.r),
                    topRight: Radius.circular(120.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Scan a product package for detailed structure information and proper recycling location.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/images/qrcode.png',),
                    button('I Got It!', context.portrait, Colors.white, context.portrait
                            ? Size(1100.w, 200.h)
                            : Size(1100.w, 320.h), context, border: Color(0xff4D8D6E)),
                            
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  color: Colors.white,
                  height: context.portrait ? 280.h : 380.h,
                  width: 1440.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      floatingbuttons(
                          Icons.map_outlined, 'Map', context.portrait),
                      floatingbuttons(
                          Icons.newspaper, 'Blog', context.portrait),
                      floatingbuttons(Icons.shopping_bag_outlined, 'Store',
                          context.portrait),
                      floatingbuttons(
                          // Icons.campaign_outlined, 'Request', context.portrait),
                          Icons.campaign_outlined,
                          ElevatedIcon.press.toString(),
                          context.portrait),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
