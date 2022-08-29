import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/appbar.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //        APPBAR 
      appBar: appbar(context.portrait),
      body: Container(
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 1440.w,
                  height:2600.h,
                  child: Image(
                    image: AssetImage('assets/images/map.png'),fit: BoxFit.fill,
                  ),
                ),
              ),
              //    SCANNER ON THE BOTTOMRIGHT OF MAP
              Positioned(
                bottom: 400.h,
                right: 80.w,
                child: scanner(),
              ),
              //    ZOOM AND SETTING BUTTON ON THE BOTTOMLEFT OF MAP
              Positioned(
                bottom: 400.h,
                left: 80.w,
                child: otherbuttons(),
              ),
              //    NAVIGATION BUTTONS ON THE BOTTOM OF THE SCREEN
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  color: Colors.white,
                  height: 260.h,
                  width: 1440.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      floatingbuttons(Icons.map_outlined, 'Map'),
                      floatingbuttons(Icons.newspaper, 'Blog'),
                      floatingbuttons(Icons.shopping_bag_outlined, 'Store'),
                      floatingbuttons(Icons.campaign_outlined, 'Request'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
