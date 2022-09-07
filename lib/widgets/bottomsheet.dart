import 'package:app6/pages/homepage.dart';
import 'package:app6/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//    DISTANCE FROM LOCATION AND TIME TO ARRIVE

Container arivalDistance(String total, String detailtype, bool portrait,
    {String? image, IconData? icon}) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        border: Border.all(color: Color(0xff4D8D6E), width: 1),
        borderRadius: BorderRadius.circular(5)),
    child: Row(children: [
      image != null
          ? Image(
              image: AssetImage(image),
              height: portrait ? 100.h : 200.h,
              fit: BoxFit.cover,
            )
          : Icon(
              icon,
              color: Color(0xff4D8D6E),
              size: portrait ? 110.sp : 55.sp,
            ),
      SizedBox(
        width: 90.w,
      ),
      portrait
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350.w,
                  height: 100.h,
                  alignment: Alignment.center,
                  child: Text(
                    '$total',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 90.sp),
                  ),
                ),
                Text(
                  detailtype,
                  style: TextStyle(fontSize: portrait ? 50.sp : 30.sp),
                ),
              ],
            )
          : Row(
              children: [
                Text(
                  total,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  detailtype,
                  style: TextStyle(fontSize: portrait ? 50.sp : 30.sp),
                ),
              ],
            )
    ]),
  );
}

//       ADDRESS OF THE LOCATION

Container address(String location, bool portrait) {
  return Container(
    padding: EdgeInsets.only(left: 40.w),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xff4D8D6E), width: 1),
      borderRadius: BorderRadius.circular(5),
    ),
    height: portrait ? 170.h : 200.h,
    width: 1500.w,
    child: Row(
      children: [
        Icon(
          Icons.location_on,
          color: Color(0xff4D8D6E),
          size: portrait ? 100.sp : 40.sp,
        ),
        Text(
          location,
          style: TextStyle(fontSize: portrait ? 60.sp : 30.sp),
        ),
      ],
    ),
  );
}

//    BOTTOM SHEET ON MAP CLASS

void bottomsheet(BuildContext context,Function rebuild) {
  showModalBottomSheet(
    context: context,
    builder: (_) => GestureDetector(
      child: Container(
        height: context.portrait ? 1250.h : 1840.h,
        padding: EdgeInsets.only(
            top: context.portrait ? 17 : 5,
            left: context.portrait ? 17 : 5,
            right: context.portrait ? 17 : 5,
            bottom: context.portrait ? 7 : 0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.w, top: context.portrait ? 10.h : 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.recycling),
                  SizedBox(
                    width: context.portrait ? 50.w : 450.w,
                  ),
                  Text(
                    'Recycling Point',
                    style: TextStyle(
                        color: Color(0xff4D8D6E),
                        fontSize: context.portrait ? 100.sp : 40.sp),
                  ),
                  SizedBox(
                    width: context.portrait ? 300.w : 450.w,
                  ),
                  Icon(Icons.cancel),
                ],
              ),
            ),
            SizedBox(
              height: context.portrait ? 80.h : 0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                arivalDistance(
                  '3.5 Km',
                  'Distance',
                  image: 'assets/images/distance.png',
                  context.portrait,
                ),
                arivalDistance(
                    '5 min',
                    'Estimate Time',
                    icon: Icons.watch_later_outlined,
                    context.portrait),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            address('Tarkiln Hill Ave.Bronx, NY 10466', context.portrait),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button(
                    'Learn more',
                    context.portrait,
                    Colors.white,
                    context.portrait ? Size(620.w, 200.h) : Size(700.w, 290.h),
                    context,
                    page: '/learnmorepage',
                    border: Color(0xff4D8D6E)),
                ElevatedIcon(rebuild,context),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(color: Colors.black, thickness: 2, height: 3.h),
            Container(
              color: Colors.white,
              height: context.portrait ? 220.h : 410.h,
              width: 1440.w,
              padding: EdgeInsets.only(top: context.portrait ? 20.h : 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  floatingbuttons(Icons.map_outlined, 'Map', context.portrait),
                  floatingbuttons(Icons.newspaper, 'Blog', context.portrait),
                  floatingbuttons(
                      Icons.shopping_bag_outlined, 'Store', context.portrait),
                  floatingbuttons(
                      Icons.campaign_outlined, 'Request', context.portrait),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
      behavior: HitTestBehavior.opaque,
    ),
  );
}
