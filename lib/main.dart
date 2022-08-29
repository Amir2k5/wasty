import 'package:app6/pages/loginpage.dart';
import 'package:app6/pages/mappage.dart';
import 'package:app6/pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 3040),
      rebuildFactor: (old, data) => RebuildFactors.size(old, data),
      builder: (context, child) => MaterialApp(
        home: MapPage(),
      ),
    );
  }
}

