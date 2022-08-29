
import 'package:app6/pages/loginpage.dart';
import 'package:app6/pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//    A LOGIN OR SIGN UP BUTTON
ElevatedButton button(String button, bool portrait, Color background,
    {required Color border}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      primary: background,
      minimumSize: portrait ? Size(1100.w, 200.h) : Size(1100.w, 320.h),
      side: BorderSide(color: border, width: 2),
    ),
    child: Text(
      button,
      style: TextStyle(color: border, fontWeight: FontWeight.bold),
    ),
  );
}
//      TEXT BUTTON LIKE FORGOT PASSWORD OR TERMS AND PRIVACY ETC
Expanded txbutton(
    {required String button,
    required Color color,
    required bool portrait,
    required Color border,
    required double size,
     BuildContext? ctx,
     bool? login,
    }) {
      Color newcolor = Colors.white;
  return Expanded(
    
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: border,
          ),
        ),
      ),
      child: SizedBox(
        height:portrait? 150.h:280.h,
        child: TextButton(
          onPressed: ctx != null && login!=null
              ?login? () {
                  Navigator.of(ctx).push(
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                  );
                }:()=> Navigator.of(ctx).push(MaterialPageRoute(builder: (_)=>SignUp()))
              : () {},
          child: Text(
            button,
            style: TextStyle(
              color: color,
              fontSize: size.sp,
            ),
          ),
        ),
      ),
    ),
  );
}

//    SCANNER FOR SCANNING AND FINDING LOCATION ON MAP
Container scanner(){return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                height: 270.h,
                width: 270.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff4D8D6E),
                    width: 2,
                  ),
                  color: Colors.transparent,
                ),
                child: CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 140.sp,
                    alignment: Alignment.center,
                    padding: EdgeInsets.zero,
                    color: Colors.white,
                    icon: Icon(
                      Icons.center_focus_strong_outlined,
                    ),
                  ),
                  backgroundColor: Color(0xff4D8D6E),
                ),
              );}

//     BUTTONS FOR ZOOM AND SETTING
Column otherbuttons(){return Column(
                children: [
                  Container(
                    height: 150.h,
                    child: IconButton(
                        color: Colors.white,
                        iconSize: 120.sp,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                        },
                        icon: Icon(Icons.tune)),
                    decoration: BoxDecoration(
                        color: Color(0xff4D8D6E),
                        borderRadius: BorderRadius.circular(13)),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Container(
                    height: 180.h,
                    child: IconButton(
                        color: Colors.white,
                        iconSize: 120.sp,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          print('hello');
                        },
                        icon: Icon(Icons.add)),
                    decoration: BoxDecoration(
                        color: Color(0xff4D8D6E),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            topRight: Radius.circular(13))),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    height: 180.h,
                    child: IconButton(
                        color: Colors.white,
                        iconSize: 120.sp,
                        padding: EdgeInsets.only(bottom: 80.h),
                        onPressed: () {
                          print('hello');
                        },
                        icon: Icon(Icons.minimize)),
                    decoration: BoxDecoration(
                        color: Color(0xff4D8D6E),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13))),
                  ),
                ],
              );
              }



//   NAVIGATION BUTTON ON MAP
Column floatingbuttons (IconData icon,String label){
  return Column(
                        children: [
                          SizedBox(
                            height: 160.h,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                iconSize: 130.sp,
                                color: Colors.grey,
                                onPressed: () {},
                                icon: Icon(
                                  icon,
                                )),
                          ),
                          Text(
                            label,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      );}