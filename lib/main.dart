import 'package:app6/models/accdata.dart';
import 'package:app6/pages/learnmorepage.dart';
import 'package:app6/pages/loginpage.dart';
import 'package:app6/pages/mappage.dart';
import 'package:app6/pages/scanpage.dart';
import 'package:app6/pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  List<AccountData> users = [];

    return ScreenUtilInit(
      designSize: Size(1440, 3040),
      rebuildFactor: (old, data) => RebuildFactors.size(old, data),
      builder: (context, child) => MaterialApp(

        initialRoute: '/scanpage',
        routes:
        {
          '/': (_)=>HomePage(),
          '/loginpage':(_)=>LoginPage(users),
          '/signuppage':(_) => SignUp(users),
          '/mappage':(_)=>MapPage(), 
          '/learnmorepage':(_)=>LearnMore(),
          '/scanpage':(_)=>ScanPage(),
        }
         ,
      ),
    );
  }
}

