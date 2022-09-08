import 'package:app6/models/accdata.dart';
import 'package:app6/pages/homepage.dart';
import 'package:app6/pages/loginpage.dart';
import 'package:app6/pages/mappage.dart';
import 'package:app6/pages/signuppage.dart';
import 'package:app6/widgets/alertdialog.dart';
import 'package:app6/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//    A LOGIN OR SIGN UP BUTTON
ElevatedButton button(
  String button,
  bool portrait,
  Color background,
  Size size,
  BuildContext context, {
  String? page,
  required Color border,
  Function? function,
}) {
  return ElevatedButton(
    onPressed: () {
      if (page != null) {
        if (button == 'Sign Up') {
          function!();
        } else if (button == 'Login') {
          function!(context);
        } else {
          Navigator.pushNamed(context, page);
        }
      } else {
        Navigator.of(context).pop();
      }
    },
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      backgroundColor: background,
      minimumSize: size,
      side: BorderSide(color: border, width: 2),
    ),
    child: Text(
      button,
      style: TextStyle(color: border, fontWeight: FontWeight.bold),
    ),
  );
}

//   ELEVATED ICON BUTTON
class ElevatedIcon extends StatefulWidget {
  static bool press = false;
  Function rebuild;
  BuildContext ct;
  ElevatedIcon(this.rebuild, this.ct);
  @override
  State<ElevatedIcon> createState() => _ElevatedIconState();
}

class _ElevatedIconState extends State<ElevatedIcon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.white, width: 2),
          backgroundColor: Color(0xff4D8D6E),
          foregroundColor: Colors.white,
          minimumSize:
              context.portrait ? Size(620.w, 200.h) : Size(620.w, 300.h),
          shape: StadiumBorder()),
      onPressed: () {
        setState(() {
          ElevatedIcon.press = !ElevatedIcon.press;
          Navigator.of(context).pop();
          widget.rebuild();
          alert(context, widget.ct, context.portrait);
        });
      },
      label: Text('Navigate'),
      icon: Transform.rotate(
        child: Icon(Icons.navigation),
        angle: 0.8,
      ),
    );
  }
}

//      TEXT BUTTON LIKE FORGOT PASSWORD OR TERMS AND PRIVACY ETC
Expanded txbutton({
  required String button,
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
        height: portrait ? 150.h : 280.h,
        child: TextButton(
          onPressed: ctx != null && login != null
              ? login
                  ? () {
                      Navigator.pushNamed(ctx, '/loginpage');
                    }
                  : () => Navigator.pushNamed(ctx, '/signuppage')
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
Container scanner(bool portrait, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(5),
    height: portrait ? 270.h : 430.h,
    width: portrait ? 270.h : 430.h,
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
        onPressed: () {
          Navigator.of(context).pushNamed('/scanpage');
        },
        iconSize: portrait ? 140.sp : 60.sp,
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
        color: Colors.white,
        icon: Icon(
          Icons.center_focus_strong_outlined,
        ),
      ),
      backgroundColor: Color(0xff4D8D6E),
    ),
  );
}

//     BUTTONS FOR ZOOM AND SETTING
Column otherbuttons(bool portrait) {
  return Column(
    children: [
      Container(
        height: portrait ? 150.h : 300.h,
        child: IconButton(
            color: Colors.white,
            iconSize: portrait ? 120.sp : 60.sp,
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(Icons.tune)),
        decoration: BoxDecoration(
            color: Color(0xff4D8D6E), borderRadius: BorderRadius.circular(13)),
      ),
      SizedBox(
        height: 60.h,
      ),
      Container(
        height: portrait ? 180.h : 300.h,
        child: IconButton(
            color: Colors.white,
            iconSize: portrait ? 120.sp : 60.sp,
            padding: EdgeInsets.zero,
            onPressed: () {
              print('hello');
            },
            icon: Icon(Icons.add)),
        decoration: BoxDecoration(
            color: Color(0xff4D8D6E),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13), topRight: Radius.circular(13))),
      ),
      SizedBox(height: 30.h),
      Container(
        height: portrait ? 180.h : 300.h,
        child: IconButton(
            color: Colors.white,
            iconSize: portrait ? 120.sp : 60.sp,
            padding: EdgeInsets.only(bottom: 80.h),
            onPressed: () {},
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
Column floatingbuttons(IconData icon, String label, bool portrait) {
  return Column(
    children: [
      SizedBox(
        height: portrait ? 130.h : 220.h,
        child: IconButton(
            padding: EdgeInsets.zero,
            iconSize: portrait ? 130.sp : 65.sp,
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
  );
}

//     LOCATIONS ON MAP

class location extends StatelessWidget {
  Color color;
  IconData icon;
  Function rebuild;
  location(this.color, this.icon, this.rebuild);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: color,
      child: FittedBox(
        child: IconButton(
          color: Colors.white,
          iconSize: 140.sp,
          icon: Icon(icon),
          onPressed: () {
            icon == Icons.recycling_rounded
                ? bottomsheet(context, rebuild)
                : null;
          },
        ),
      ),
    );
  }
}
