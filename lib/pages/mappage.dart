import 'dart:js_util';

import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/alertdialog.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  bool? press;
  //   JUST TO REBUILD THIS PAGE
  rebuild() {
    setState(() {
      press = ElevatedIcon.press;
    });
  }

  @override
  Widget build(BuildContext context) {
    actx ()=> context;
    return Scaffold(
      //        APPBAR
      appBar: appbar(context.portrait),
      //        BODY
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 1440.w,
                  height: context.portrait ? 2630.h : 7500.h,
                  child: Image(
                    image: AssetImage('assets/images/map2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //    SCANNER ON THE BOTTOMRIGHT OF MAP
              Positioned(
                bottom: 400.h,
                right: 80.w,
                child: scanner(context.portrait,context),
              ),
              //    ZOOM AND SETTING BUTTON ON THE BOTTOMLEFT OF MAP
              Positioned(
                bottom: 400.h,
                left: 80.w,
                child: otherbuttons(context.portrait),
              ),
              //    NAVIGATION BUTTONS ON THE BOTTOM OF THE SCREEN
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
              //    LOCATIONS TO GO
              Positioned(
                  bottom: context.portrait ? 700.h : 1900.h,
                  right: 200.w,
                  child: location(
                      Color(0xffAA6969), Icons.recycling_rounded, rebuild)),
              Positioned(
                bottom: context.portrait ? 1100.h : 3300.h,
                right: 440.w,
                child: location(
                    Color(0xffAA6969), Icons.recycling_rounded, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 1700.h : 4900.h,
                right: 470.w,
                child: location(
                    Color(0xffAA6969), Icons.recycling_rounded, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 920.h : 2500.h,
                right: 770.w,
                child:
                    location(Colors.amber[400]!, Icons.delete_outline, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 1200.h : 3500.h,
                right: 970.w,
                child:
                    location(Colors.amber[400]!, Icons.delete_outline, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 1900.h : 5500.h,
                right: 790.w,
                child:
                    location(Colors.amber[400]!, Icons.delete_outline, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 2400.h : 6800.h,
                right: 670.w,
                child:
                    location(Colors.amber[400]!, Icons.delete_outline, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 2100.h : 6000.h,
                right: 370.w,
                child: location(
                    Colors.grey[500]!, Icons.shopping_bag_outlined, rebuild),
              ),
              Positioned(
                bottom: context.portrait ? 1300.h : 3300.h,
                right: 570.w,
                child: location(
                    Colors.grey[500]!, Icons.shopping_bag_outlined, rebuild),
              ),
              AnimatedPositioned(
                duration: Duration(seconds: 1),
                bottom: context.portrait
                    ? ElevatedIcon.press
                        ? 1600.h
                        : 920.h
                    : ElevatedIcon.press
                        ? 4700.h
                        : 2500.h,
                right: context.portrait
                    ? ElevatedIcon.press
                        ? 530.w
                        : 970.w
                    : ElevatedIcon.press
                        ? 480.w
                        : 950.w,
                child: Transform.rotate(
                  child: Icon(
                    Icons.navigation,
                    color: Color(0xff4D8D6E),
                    size: 100.sp,
                  ),
                  angle: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
